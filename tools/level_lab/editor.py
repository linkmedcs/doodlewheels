"""Visual editing of native DWL maps, with revision checks and recoverable saves."""
import hashlib
import json
import math
import re
from datetime import datetime
from pathlib import Path
from xml.dom import minidom
from materials import PHYSICAL, TEXT

ROOT = Path(__file__).resolve().parents[2]
ASSETS = ROOT / 'decompiled/apktool/assets'
BACKUPS = ROOT / 'build/level-lab/backups'
TAGS = {'body', 'ball', 'wheels', 'star', 'switch', 'sprite', 'label'}
FIELDS = {'x', 'y', 'rotation', 'opacity', 'frame', 'density', 'friction',
          'restitution', 'isSensor', 'isCircle', 'text', 'fontsize', 'script'}
META = 'level-lab-editor:'
BEGIN = '-- LEVEL_LAB_GENERATED_BEGIN'
END = '-- LEVEL_LAB_GENERATED_END'


def metadata(doc):
    for n in doc.documentElement.childNodes:
        if n.nodeType == n.COMMENT_NODE and n.data.strip().startswith(META):
            return json.loads(n.data.strip()[len(META):])
    return {}


def mechanism_members(m):
    if m['kind'] == 'rope':
        return {v for j in m['joints'] for v in j.values()} | set(m.get('extras', []))
    if m['kind'] in {'linkage', 'assembly'}: return set(m['bodies'])
    if m['kind'] == 'lift': return {m[k] for k in ('platform', 'anchor', 'switch')}
    raise ValueError('不支持的机关类型')


def generated_script(doc, nodes, mechanisms):
    """Emit only validated native API calls; leave authored Lua outside our block."""
    script_nodes = [e for e in elements(doc) if e.tagName == 'script']
    if len(script_nodes) != 1: raise ValueError('地图必须包含一个原版脚本节点')
    script_node = script_nodes[0]
    original = ''.join(n.data for n in script_node.childNodes
                       if n.nodeType in (n.TEXT_NODE, n.CDATA_SECTION_NODE))
    base = re.sub(r'\n?' + re.escape(BEGIN) + r'\n.*?\n' + re.escape(END), '', original, flags=re.S)
    byid = {}
    for n in nodes:
        ident = n['attrs'].get('id')
        if ident: byid.setdefault(ident, []).append(n)

    def require(ident, tag='body'):
        matches = byid.get(ident, [])
        if len(matches) != 1 or (tag is not None and matches[0]['tag'] != tag):
            raise ValueError('机关引用缺失或不唯一：' + str(ident) + '。请保留整组机关。')
        return matches[0]

    quote = lambda s: json.dumps(s, ensure_ascii=False)
    init, declarations, callbacks, actions, colors, used = [], [], [], {}, {}, set()
    for m in mechanisms:
        ident = m['id']
        if not re.fullmatch(r'editor_[a-zA-Z0-9_]{1,80}', ident) or ident in used:
            raise ValueError('机关标识不正确或重复')
        used.add(ident)
        for member in mechanism_members(m):
            require(member, None if m['kind']=='assembly' else 'switch' if m['kind']=='lift' and member==m['switch'] else 'body')
        if m['kind'] == 'rope':
            if not 1 <= len(m['joints']) <= 100: raise ValueError('链条连接数量不正确')
            for j in m['joints']:
                if set(j) != {'a', 'link', 'b'} or len(set(j.values())) != 3:
                    raise ValueError('链条需要三个不同的刚体')
                init.append('create26('+','.join(quote(j[k]) for k in ('a','link','b'))+')')
        elif m['kind'] == 'linkage':
            if len(m['bodies']) != 4: raise ValueError('联动跷跷板需要四个刚体')
            init.append('create23('+','.join('find('+quote(b)+')' for b in m['bodies'])+')')
        elif m['kind'] == 'lift':
            variable = 'joint_'+ident
            callback = 'editor_action_'+m['switch']
            declarations.append('local '+variable)
            init.append(variable+'=createjoint10(find('+quote(m['platform'])+'),find('+quote(m['anchor'])+'))')
            require(m['switch'], 'switch')['attrs']['script'] = callback
            if callback in used: raise ValueError('开关不能同时控制两个机关')
            used.add(callback)
            callbacks.append('function '+callback+'() active10(find('+quote(m['platform'])+'),'+variable+') end')
    for n in nodes:
        action = n.get('action')
        if not action: continue
        ident = n['attrs'].get('id', '')
        if n['tag'] != 'switch' or not re.fullmatch(r'editor_[a-zA-Z0-9_]{1,80}', ident):
            raise ValueError('仅编辑器开关支持配置动作')
        if action.get('kind') != 'remove': raise ValueError('不支持的开关动作')
        target, delay = action.get('target', ''), float(action.get('delay', 0))
        require(target)
        if not math.isfinite(delay) or not 0 <= delay <= 60: raise ValueError('开关延迟范围为 0～60 秒')
        callback = 'editor_action_'+ident
        if callback in used: raise ValueError('开关不能同时控制两个机关')
        used.add(callback)
        n['attrs']['script'] = callback
        callbacks.append('function '+callback+'() remove(find('+quote(target)+'),'+str(delay)+') end')
        actions[ident] = dict(kind='remove', target=target, delay=delay)
    for n in nodes:
        if n['tag'] == 'switch' and (n['key'].startswith('new_') or n['attrs'].get('script','').startswith('editor_action_')):
            callback = 'editor_action_'+n['attrs']['id']
            if callback not in used: raise ValueError('新开关尚未绑定目标，请在属性中选择挡板')
        color = n.get('color')
        if color is None: continue
        if not isinstance(color, str) or not re.fullmatch(r'#[0-9a-fA-F]{6}', color):
            raise ValueError('颜色应为 #RRGGBB 格式')
        ident = n['attrs'].get('id')
        if not ident or n['tag'] not in {'body', 'sprite'}:
            raise ValueError('只有有唯一标识的建筑素材支持设置颜色')
        require(ident, None)
        colors[ident] = color.lower()
        rgb = [str(int(color[i:i+2], 16)/255) for i in (1, 3, 5)]
        init.append('color(find('+quote(ident)+'),'+','.join(rgb)+')')
    if mechanisms or actions or colors:
        generated = [BEGIN] + declarations + ['local editor_previous_init=init',
                    'function init()', '  if editor_previous_init then editor_previous_init() end']
        generated += ['  '+line for line in init]
        generated += ['end'] + callbacks + [END]
        changed = base+'\n'+'\n'.join(generated)
    else: changed = base
    if changed != original:
        for child in list(script_node.childNodes): script_node.removeChild(child)
        script_node.appendChild(doc.createCDATASection(changed))
    for child in list(doc.documentElement.childNodes):
        if child.nodeType == child.COMMENT_NODE and child.data.strip().startswith(META):
            doc.documentElement.removeChild(child)
    if mechanisms or actions or colors:
        meta = dict(mechanisms=mechanisms, actions=actions, colors=colors)
        doc.documentElement.appendChild(doc.createComment(META+json.dumps(meta, ensure_ascii=True, separators=(',',':'))))


def level_path(number):
    if isinstance(number, bool) or not isinstance(number, int) or not 1 <= number <= 60:
        raise ValueError('关卡范围为 1～60')
    return ASSETS / f'lvs/v{number}.dwl'


def revision(raw):
    return hashlib.sha256(raw).hexdigest()


def elements(doc):
    return [e for e in doc.documentElement.childNodes if e.nodeType == e.ELEMENT_NODE]


def read_design(number):
    raw = level_path(number).read_bytes()
    doc = minidom.parseString(raw)
    meta = metadata(doc)
    nodes = []
    for i, e in enumerate(elements(doc)):
        if e.tagName in TAGS:
            node = dict(key=f'node{i}', tag=e.tagName, attrs=dict(e.attributes.items()))
            if e.getAttribute('id') in meta.get('actions', {}):
                node['action'] = meta['actions'][e.getAttribute('id')]
            if e.getAttribute('id') in meta.get('colors', {}):
                node['color'] = meta['colors'][e.getAttribute('id')]
            nodes.append(node)
    return dict(level=number, revision=revision(raw), nodes=nodes,
                mechanisms=meta.get('mechanisms', []))


def build_design(data, sizes):
    path = level_path(data['level'])
    raw = path.read_bytes()
    if data.get('revision') != revision(raw):
        raise ValueError('地图已被其他操作修改，请重新载入后再编辑（可先导出草稿）')
    doc = minidom.parseString(raw)
    source = {f'node{i}': e for i, e in enumerate(elements(doc)) if e.tagName in TAGS}
    nodes, deleted = data.get('nodes', []), data.get('deleted', [])
    mechanisms = data.get('mechanisms', [])
    if not isinstance(mechanisms, list) or len(mechanisms) > 100: raise ValueError('机关组合数量不正确')
    if not isinstance(nodes, list) or not isinstance(deleted, list) or len(nodes) > 1800:
        raise ValueError('草稿格式或物体数量不正确')
    script = ''.join(n.data for e in elements(doc) if e.tagName == 'script'
                     for n in e.childNodes if n.nodeType in (n.TEXT_NODE, n.CDATA_SECTION_NODE))
    # The generated section is rebuilt after validating all remaining references.
    script = re.sub(re.escape(BEGIN)+r'.*?'+re.escape(END), '', script, flags=re.S)
    ids = {e.getAttribute('id') for e in source.values() if e.getAttribute('id')}
    seen = set()
    for key in deleted:
        if key not in source or source[key].tagName not in {'body', 'sprite', 'label', 'switch'}:
            raise ValueError('货球、车辆和目标需要保留；其他素材可删除')
        ident = source[key].getAttribute('id')
        if ident and re.search(r'[\'\"]' + re.escape(ident) + r'[\'\"]', script):
            raise ValueError(f'{ident} 被关卡机关脚本引用，不能直接删除')
        doc.documentElement.removeChild(source[key])
    for node in nodes:
        key, tag, attrs = node['key'], node['tag'], node['attrs']
        if key in seen or key in deleted:
            raise ValueError('物体标识重复或已删除')
        seen.add(key)
        if key in source:
            e = source[key]
            if tag != e.tagName or attrs.get('id', '') != e.getAttribute('id'):
                raise ValueError('不能改变现有物体类型或脚本标识')
        elif key.startswith('new_') and tag in {'body', 'sprite', 'label', 'switch'}:
            e = doc.createElement(tag)
            ident = attrs.get('id', '')
            if not re.fullmatch(r'editor_[a-zA-Z0-9_]{1,80}', ident):
                raise ValueError('新物体标识不正确')
            if ident in ids: raise ValueError('新物体 id 与地图中的物体重复')
            ids.add(ident)
            e.setAttribute('id', ident)
            doc.documentElement.appendChild(doc.createTextNode('\n  '))
            doc.documentElement.appendChild(e)
        else:
            raise ValueError('物体不存在或不是可添加的类型')
        for name, value in attrs.items():
            if name not in FIELDS:
                if e.hasAttribute(name) and e.getAttribute(name) == str(value): continue
                raise ValueError('不支持修改属性：' + name)
            if name in {'density', 'friction', 'restitution', 'isSensor', 'isCircle'} and tag != 'body':
                if e.getAttribute(name) == str(value): continue
                raise ValueError('此物体只支持移动、旋转和透明度调整')
            value = str(value)
            if name == 'frame':
                if tag not in {'body','sprite'} or value not in sizes or (tag=='body' and value not in PHYSICAL):
                    if value != e.getAttribute(name): raise ValueError('请选择此类型支持的原游戏素材')
            elif name == 'text':
                if tag != 'label' or value not in TEXT:
                    if value != e.getAttribute(name): raise ValueError('请选择原版文字词条')
            elif name == 'script':
                if tag != 'switch' or (value != e.getAttribute(name) and value != 'editor_action_'+e.getAttribute('id')):
                    raise ValueError('开关脚本由动作或原版机关生成')
            elif name in {'isSensor', 'isCircle'}:
                if value not in {'true', 'false'}: raise ValueError('碰撞属性必须是 true / false')
            else:
                n = float(value)
                if not math.isfinite(n) or abs(n) > 100000:
                    raise ValueError('坐标和属性必须是有限数值，绝对值不超过 100000')
                if name in {'density', 'friction', 'restitution'} and not 0 <= n <= 100:
                    raise ValueError('物理属性范围为 0～100')
                if name == 'opacity' and not 0 <= n <= 1: raise ValueError('透明度范围为 0～1')
                if name == 'fontsize' and (tag != 'label' or not 8 <= n <= 100): raise ValueError('文字字号范围为 8～100')
            e.setAttribute(name, value)
        if tag in {'body','sprite'} and not e.hasAttribute('frame'): raise ValueError('物体缺少素材')
        if tag == 'label' and not e.hasAttribute('text'): raise ValueError('提示文字缺少词条')
        if not e.hasAttribute('x') or not e.hasAttribute('y'): raise ValueError('物体缺少坐标')
    if set(source) - set(deleted) - seen:
        raise ValueError('草稿缺少原始物体，请重新载入')
    generated_script(doc, nodes, mechanisms)
    # Generated callbacks may replace a prefab's source-level callback name.
    byid = {e.getAttribute('id'): e for e in elements(doc) if e.tagName=='switch'}
    for n in nodes:
        if n['tag']=='switch' and n['attrs'].get('id') in byid:
            byid[n['attrs']['id']].setAttribute('script', n['attrs'].get('script',''))
    return path, raw, doc.toxml(encoding='utf-8')


def save_design(data, sizes):
    path, original, changed = build_design(data, sizes)
    if original == changed:
        return dict(saved=False, backup=None)
    BACKUPS.mkdir(parents=True, exist_ok=True)
    backup = BACKUPS / f'v{data["level"]}-{datetime.now():%Y%m%d-%H%M%S-%f}-{revision(original)[:8]}.dwl'
    backup.write_bytes(original)
    temp = path.with_suffix('.dwl.tmp')
    try:
        temp.write_bytes(changed)
        if path.read_bytes() != original: raise ValueError('保存期间地图发生变化，请重新载入')
        temp.replace(path)
    finally:
        if temp.exists(): temp.unlink()
    return dict(saved=True, backup=str(backup.relative_to(ROOT)))
