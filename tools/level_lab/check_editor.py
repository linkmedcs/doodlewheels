"""Check native map preservation, draft simulation, revisions and backup saves."""
from copy import deepcopy
from pathlib import Path
from tempfile import TemporaryDirectory
from unittest.mock import patch
import xml.etree.ElementTree as ET

import editor
from server import SIZES, Simulation
import server


def rejects(data, message):
    try:
        editor.build_design(data, SIZES)
    except ValueError:
        return
    raise AssertionError(message)


# Every original map, including native duplicate ids and scripted mechanisms,
# must survive an untouched roundtrip without dropping Lua or non-editable tags.
for n in range(1, 61):
    draft = editor.read_design(n)
    draft['deleted'] = []
    _, raw, changed = editor.build_design(draft, SIZES)
    before, after = ET.fromstring(raw), ET.fromstring(changed)
    assert before.findtext('script') == after.findtext('script')
    assert [ET.tostring(e) for e in before] == [ET.tostring(e) for e in after]
    sim = Simulation(n, after)
    sim.step(0, 6)
    assert all(abs(o['x']) < 1e6 and abs(o['y']) < 1e6 for o in sim.state()['objects'])


# Work on an isolated map, never save test changes to real level assets.
with TemporaryDirectory() as folder:
    root = Path(folder)
    assets = root / 'assets'
    (assets / 'lvs').mkdir(parents=True)
    path = assets / 'lvs/v48.dwl'
    original = b'''<?xml version="1.0"?>
<lv w="2000" h="1000"><!--Keep this comment-->
<script><![CDATA[function init() local a = "plank"; if 1 < 2 then end end]]></script>
<body id="plank" x="0" y="50" frame="box406" density="0" />
<ball id="ball" x="0" y="0"/><wheels x="-100" y="0"/><star x="150" y="0"/>
<native_extension anything="keep &amp; preserve"/></lv>'''
    path.write_bytes(original)
    with patch.multiple(editor, ROOT=root, ASSETS=assets, BACKUPS=root / 'backups'):
        draft = editor.read_design(48)
        draft['deleted'] = []
        draft['nodes'][0]['attrs']['x'] = '25'
        _, _, changed = editor.build_design(draft, SIZES)
        assert path.read_bytes() == original, 'Preview modified the map'
        assert b'<![CDATA[' in changed and b'Keep this comment' in changed
        assert b'<native_extension anything="keep &amp; preserve"/>' in changed
        Simulation(48, ET.fromstring(changed))
        bad = deepcopy(draft); bad['nodes'][0]['attrs']['x'] = 'nan'
        rejects(bad, 'Accepted a non-finite position')
        bad = deepcopy(draft); bad['nodes'][0]['attrs']['id'] = 'renamed'
        rejects(bad, 'Renamed an id referenced by Lua')
        bad = deepcopy(draft); bad['deleted'] = [bad['nodes'].pop(0)['key']]
        rejects(bad, 'Deleted an id referenced by Lua')
        bad = deepcopy(draft); bad['nodes'].pop()
        rejects(bad, 'Silently omitted an existing goal')
        bad = deepcopy(draft); bad['level'] = '../48'
        rejects(bad, 'Accepted a non-numeric level path')
        result = editor.save_design(draft, SIZES)
        assert result['saved'] and (root / result['backup']).read_bytes() == original
        assert ET.parse(path).getroot().find('body').get('x') == '25'
        rejects(draft, 'Accepted a stale revision after save')
        fresh = editor.read_design(48); fresh['deleted'] = []
        fresh['nodes'].append(dict(key='new_test', tag='body', attrs=dict(
            id='editor_test', frame='box73', x='200', y='100', density='0')))
        _, _, changed = editor.build_design(fresh, SIZES)
        assert len(ET.fromstring(changed).findall('body')) == 2
        bad = deepcopy(fresh); bad['nodes'][-1]['attrs']['id'] = 'plank'
        rejects(bad, 'Accepted an unsafe or duplicate new id')

        # Native authored colour is visible, overrides use native Lua, and reset
        # returns to authored colour after save/reload (without touching XML attrs).
        original_color=b'''<lv w="2000" h="1000"><script><![CDATA[
function init() color(find("board"),0.2,0.4,0.6) end
]]></script><body id="board" x="0" y="100" frame="box73" density="0"/>
<ball id="ball" x="0" y="0"/><wheels x="-300" y="0"/><star x="500" y="0"/></lv>'''
        path.write_bytes(original_color)
        with patch.object(server,'ASSETS',assets):
            d=server.editor_design(48);d['deleted']=[]
            board=d['nodes'][0]
            assert board['baseColor']=='#336699' and 'color' not in board
            board['color']='#ff1933'
            board['attrs'].update(restitution='1.5',friction='.25',density='2')
            _,_,changed=editor.build_design(d,SIZES)
            native=ET.fromstring(changed);sim=Simulation(48,native)
            tint=sim.bykey[sim.lookup['board']]['data']['tint']
            assert all(abs(x-y/255)<1e-7 for x,y in zip(tint,(255,25,51)))
            fixture=sim.body(sim.lookup['board']).fixtures[0]
            assert (fixture.restitution,fixture.friction,fixture.density)==(1.5,.25,2)
            assert 'color' not in native.find('body').attrib and 'baseColor' not in native.find('body').attrib
            assert path.read_bytes()==original_color,'Colour preview changed the map'
            for value in ('red','#fffffff','#ff0000); os.execute("bad")',[],{}):
                bad=deepcopy(d);bad['nodes'][0]['color']=value;rejects(bad,'Accepted invalid colour')
            bad=deepcopy(d);bad['nodes'][1]['color']='#ffffff';rejects(bad,'Accepted task-object colour')
            editor.save_design(d,SIZES)
            again=server.editor_design(48);again['deleted']=[]
            assert again['nodes'][0]['color']=='#ff1933' and again['nodes'][0]['baseColor']=='#336699'
            editor.save_design(again,SIZES)
            assert ET.parse(path).getroot().findtext('script').count(editor.BEGIN)==1
            reset=server.editor_design(48);reset['deleted']=[];del reset['nodes'][0]['color']
            editor.save_design(reset,SIZES)
            native=ET.parse(path).getroot();sim=Simulation(48,native)
            assert sim.bykey[sim.lookup['board']]['data']['tint']==[.2,.4,.6]
            assert editor.BEGIN not in native.findtext('script')
            assert 'color' not in server.editor_design(48)['nodes'][0]
            # Ambiguous native ids cannot receive an override.
            path.write_bytes(original_color.replace(b'<ball ',b'<body id="board" x="200" y="100" frame="box73"/><ball '))
            bad=editor.read_design(48);bad['deleted']=[];bad['nodes'][0]['color']='#ffffff'
            rejects(bad,'Accepted ambiguous colour target')

print('PASS: 60 native map/Lua roundtrips and draft simulations; '
      'isolated save/backup, preview isolation, CDATA/comments/native tags, '
      'stale-revision protection, edit/add validation and linked-id protection; '
      'native colour load/preview/save/reload/reset, physical parameters and colour validation')
