"""Small palette of the game's basic construction shapes."""
import plistlib
import re
import xml.etree.ElementTree as ET
from pathlib import Path

ASSETS = Path(__file__).resolve().parents[2] / 'decompiled/apktool/assets'
PHYSICAL = {'box123', 'box134', 'box227', 'box406', 'box67', 'box73',
            'box87', 'circle114', 'circle16', 'circle20'}
NAMES = dict(box123='大方块', box67='小方块', box134='短木板', box227='中木板',
             box406='长木板', box73='迷你木板', box87='链条木板', circle114='大圆石',
             circle16='小支点', circle20='连接点', ball='货球', ball2='货球外观 2',
             wheels='车辆', wheel='车轮外观', star='终点星星', switch='触发开关',
             switch_1='已触发开关外观', sp10='方向提示', stand='支架外观',
             item='物品栏外观', back='返回按钮', pause='暂停按钮', retry='重试按钮',
             cloud='云朵', sun='太阳', sound_0='声音关闭', sound_1='声音开启')
TEXT = {e.tag: e.get('zh', '') for e in ET.parse(ASSETS / 'res/strings.xml').getroot()}
RESOURCES = {p.name for p in (ASSETS / 'res').iterdir()
             if p.suffix.lower() in {'.png', '.jpg', '.mp3'}}


def inventory():
    # Keep the atlas intact for map/prefab rendering, but expose only construction
    # entries in the palette. Task objects belong to the existing map.
    frames = plistlib.loads((ASSETS / 'res/entity.plist').read_bytes())['frames']
    sheets = dict(entity=dict(url='/res/entity.png', frames=frames))
    entries = [dict(key='entity:'+frame, name=NAMES[frame], frame=frame,
                    sheet='entity', mode='body',
                    attrs=dict(frame=frame, density='0', friction='0.9', restitution='0.3',
                               isSensor='false', isCircle=str(frame.startswith('circle')).lower()),
                    note='放入后在属性中调整弹性、摩擦、密度和颜色。')
               for frame in NAMES if frame in PHYSICAL]
    entries.append(dict(key='entity:switch', name='触发开关', frame='switch',
                        sheet='entity', mode='switch',
                        note='触发后移除指定物体，可调整延迟。'))
    for entry in entries:
        entry['size'] = [int(x) for x in re.findall(r'\d+', frames[entry['frame']]['sourceSize'])]
    return dict(entries=entries, sheets=sheets, texts=TEXT,
                counts=dict(physical=len(PHYSICAL), total=len(entries)))
