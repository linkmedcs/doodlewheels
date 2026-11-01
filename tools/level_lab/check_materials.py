"""Exercise every placeable frame and native prefab using isolated DWL files."""
from copy import deepcopy
from pathlib import Path
from tempfile import TemporaryDirectory
from unittest.mock import patch
import json
import math
import subprocess
import xml.etree.ElementTree as ET

import editor
from materials import inventory, PHYSICAL, ASSETS, RESOURCES
from server import SIZES, Simulation
from Box2D import b2CircleShape, b2RopeJoint

library = inventory()
frames = [m for m in library['entries'] if m.get('sheet') and m['mode'] != 'prefab']
assert library['counts'] == dict(physical=10, total=11)
assert len({m['frame'] for m in library['entries']})==11
assert {m['frame'] for m in frames} == PHYSICAL | {'switch'}
assert all(m['mode'] in {'body','switch'} for m in library['entries'])
assert not any(m['mode']=='prefab' for m in library['entries'])
for name in RESOURCES: assert (ASSETS/'res'/name).stat().st_size > 0

# Execute the actual browser placement handler: native presets must survive
# placement (in particular rectangular source pivots and restitution > 1).
placed = json.loads(subprocess.check_output(['node','-e',r'''
const fs=require('fs'),vm=require('vm');
const entries=JSON.parse(fs.readFileSync(0,'utf8'));
const ctx={mode:'edit',loading:false,design:{nodes:[]},selected:new Set(),cx:123,cy:456,
  nodes:()=>ctx.design.nodes,copy:x=>JSON.parse(JSON.stringify(x)),
  addBoard:frame=>({key:'new_test',tag:'body',attrs:{id:'editor_test',x:'123',y:'456',frame}}),
  checkpoint:()=>{},changed:()=>{},showPlacement:()=>{},$:()=>({}),
  fail:e=>{throw e;},window:{innerWidth:1000},canvas:{focus:()=>{}}};
vm.createContext(ctx);vm.runInContext(fs.readFileSync('tools/level_lab/materials.js','utf8'),ctx);
const output=[];
for(const entry of entries.filter(m=>m.mode==='body')){
  ctx.input=entry;vm.runInContext('chosenMaterial=input;placeMaterial()',ctx);
  output.push(ctx.design.nodes.pop());
}
process.stdout.write(JSON.stringify(output));
'''], input=json.dumps(library['entries']).encode()))
for material,node in zip((m for m in frames if m['mode']=='body'),placed):
    assert all(node['attrs'][k]==v for k,v in material['attrs'].items())
    assert node['attrs']['x']=='123' and node['attrs']['y']=='456'


def remap(value, ids):
    if isinstance(value, str): return ids.get(value, value)
    if isinstance(value, list): return [remap(v, ids) for v in value]
    if isinstance(value, dict): return {k:remap(v, ids) for k,v in value.items()}
    return value


def add_prefab(draft, p, suffix):
    ids = {n['attrs']['id']: f'editor_{suffix}_{i}' for i,n in enumerate(p['nodes'])}
    added = remap(deepcopy(p['nodes']), ids)
    for i,n in enumerate(added):
        n['key'] = f'new_{suffix}_{i}'
        n['attrs']['x'] = str(float(n['attrs']['x'])+6000)
        if n['tag']=='switch': n['attrs']['script']='editor_action_'+n['attrs']['id']
    draft['nodes'].extend(added)
    m = remap(deepcopy(p['mechanism']), ids)
    m['id'] = 'editor_group_'+suffix
    draft['mechanisms'].append(m)
    return added, m


def preview(draft):
    _, _, xml = editor.build_design(draft, SIZES)
    sim = Simulation(48, ET.fromstring(xml))
    assert not any('Lua' in w or '不存在' in w for w in sim.warnings), sim.warnings
    return sim


with TemporaryDirectory() as folder:
    root = Path(folder); assets = root/'assets'; (assets/'lvs').mkdir(parents=True)
    path = assets/'lvs/v48.dwl'
    original = (ASSETS/'lvs/v48.dwl').read_bytes()
    path.write_bytes(original)
    with patch.multiple(editor, ROOT=root, ASSETS=assets, BACKUPS=root/'backups'):
        base = editor.read_design(48); base['deleted'] = []
        base_sim = preview(deepcopy(base))
        base_joints = len(list(base_sim.world.joints))
        d=deepcopy(base)
        for i,node in enumerate(placed):
            node=deepcopy(node);node['key']=f'new_preset_{i}';node['attrs']['id']=f'editor_preset_{i}'
            node['attrs']['x']=str(6000+i*600);node['attrs']['y']='0'
            d['nodes'].append(node)
        sim=preview(d)
        for i,material in enumerate(m for m in frames if m['mode']=='body'):
            fixture=sim.body(sim.lookup[f'editor_preset_{i}']).fixtures[0];a=material['attrs']
            assert math.isclose(fixture.restitution,float(a['restitution']),abs_tol=1e-6)
            assert math.isclose(fixture.friction,float(a['friction']),abs_tol=1e-6)
            assert math.isclose(fixture.density,float(a['density']),abs_tol=1e-6)
            assert fixture.sensor==(a['isSensor']=='true')
            assert isinstance(fixture.shape,b2CircleShape)==(a['isCircle']=='true')
        editor.save_design(d,SIZES)
        reread=editor.read_design(48)
        assert [n['attrs'] for n in reread['nodes'] if n['attrs'].get('id','').startswith('editor_preset_')]==[n['attrs'] for n in d['nodes'] if n['attrs'].get('id','').startswith('editor_preset_')]
        path.write_bytes(original)

        # A falling ball must actually rebound from the level-24 board with
        # greater upward speed than its incoming downward speed.
        elastic=deepcopy(next(m for m in frames if m['frame']=='box73'))
        elastic['attrs']['restitution']='1.5'
        bounce_map=ET.Element('lv',w='2000',h='1000')
        ET.SubElement(bounce_map,'body',dict(elastic['attrs'],id='elastic',x='0',y='0'))
        ET.SubElement(bounce_map,'ball',id='ball',x='0',y='-150')
        ET.SubElement(bounce_map,'wheels',id='car',x='1000',y='0')
        ET.SubElement(bounce_map,'star',id='goal',x='1500',y='0')
        bounce=Simulation(24,bounce_map);incoming=0;rebounded=False
        for _ in range(180):
            before=bounce.ball.linearVelocity.y;bounce.step(0,1);after=bounce.ball.linearVelocity.y
            if before<0:incoming=max(incoming,-before)
            if before<0 and after>0:
                assert after>incoming*1.2,(incoming,after)
                rebounded=True;break
        assert rebounded,'Elastic board failed to bounce the ball'
        for i,frame in enumerate(sorted(SIZES)):
            # All 23 atlas frames can be decoration; all 10 native body frames
            # additionally get the correct rectangle / circle fixture.
            for tag in (['sprite','body'] if frame in PHYSICAL else ['sprite']):
                d=deepcopy(base); ident=f'editor_{tag}_{i}'
                a=dict(id=ident,frame=frame,x='7000',y='-1000',rotation='13',opacity='1')
                if tag=='body': a.update(density='.5',friction='.4',restitution='.1',isCircle=str(frame.startswith('circle')).lower(),isSensor='false')
                d['nodes'].append(dict(key=f'new_{ident}',tag=tag,attrs=a))
                sim=preview(d); entry=sim.bykey[sim.lookup[ident]]
                if tag=='sprite': assert entry['body'] is None
                else:
                    body=entry['body']; assert body.type==2
                    assert isinstance(body.fixtures[0].shape,b2CircleShape)==frame.startswith('circle')
                sim.step(0,15)
                assert path.read_bytes()==original, 'Preview changed a project map'
        d=deepcopy(base)
        d['nodes'].append(dict(key='new_label',tag='label',attrs=dict(id='editor_label',x='7000',y='0',text='s18',fontsize='30',opacity='.7')))
        sim=preview(d); text=sim.bykey[sim.lookup['editor_label']]['data']
        assert text['text']==library['texts']['s18'] and text['fontsize']==30

        # Existing maps/drafts using removed templates must remain loadable.
        legacy=json.loads(Path(__file__).with_name('prefabs.json').read_text())
        for index,p in enumerate(legacy):
            path.write_bytes(original)
            d=deepcopy(base); added, group=add_prefab(d,p,str(index))
            sim=preview(d)
            expected=2*len(group.get('joints',[]))
            assembly_joints = expected + (3 if group['kind']=='linkage' else 1 if group['kind']=='lift' else 0)
            assert len([j for j in sim.world.joints if isinstance(j,b2RopeJoint)])==expected
            assert len(list(sim.world.joints))==base_joints+assembly_joints
            for n in added:
                if n['tag']=='switch':
                    sim.lua.globals()[n['attrs']['script']]()
                    if n.get('action'):
                        target=sim.lookup[n['action']['target']]
                        assert target in sim.pending
                        # Advance enough real solver frames for delayed removal.
                        sim.step(0,math.ceil(n['action']['delay']*60)+3)
                        assert target not in sim.bykey
                    else:
                        assert group['kind']=='lift' and len(sim.joints)==1
                        assert sim.joints[0][1].motorEnabled
                        platform=sim.body(sim.lookup[group['platform']]); y=platform.position.y
                        sim.step(0,60); assert abs(platform.position.y-y)>.2
            sim.step(0,60)
            assert all(math.isfinite(v) for o in sim.state()['objects'] for v in (o['x'],o['y']))
            result=editor.save_design(d,SIZES)
            assert result['saved'] and (root/result['backup']).read_bytes()==original
            reread=editor.read_design(48);reread['deleted']=[]
            repeat=preview(reread)
            assert len(list(repeat.world.joints))==base_joints+assembly_joints
            # A second native roundtrip must not accumulate init wrappers.
            editor.save_design(reread,SIZES)
            source=ET.parse(path).getroot().findtext('script')
            assert source.count(editor.BEGIN)==1
            broken=editor.read_design(48);broken['deleted']=[]
            victim=next(n for n in broken['nodes'] if n['attrs'].get('id')==added[0]['attrs']['id'])
            broken['nodes'].remove(victim);broken['deleted'].append(victim['key'])
            try: editor.build_design(broken,SIZES)
            except ValueError: pass
            else: raise AssertionError('Accepted a broken prefab reference')
            # Remove the complete assembly and ensure its Lua / metadata clears.
            clean=editor.read_design(48);clean['deleted']=[]
            ids={n['attrs']['id'] for n in added}
            clean['deleted']=[n['key'] for n in clean['nodes'] if n['attrs'].get('id') in ids]
            clean['nodes']=[n for n in clean['nodes'] if n['attrs'].get('id') not in ids]
            clean['mechanisms']=[]
            assert len(list(preview(clean).world.joints))==base_joints
        assert all(ET.fromstring(original).findall(t).__len__()==1 for t in ('ball','wheels','star'))

print('PASS: 11 unique basic materials, no presets/prefabs, shapes placed by JavaScript, '
      'native fixtures/save/reload and level-24 elastic rebound, '
      '7 legacy assemblies with real joints/actions, isolated save/reload, '
      'no duplicate init wrappers, complete removal and broken-reference rejection')
