"""Moving buttons keep their rendered and interactive poses on the platform."""
import math
import xml.etree.ElementTree as ET
from server import Simulation, SIZES
from editor import read_design, build_design


root = ET.fromstring('''<lv><script><![CDATA[
function init() hits=0 end
function press() hits=hits+1 end
]]></script>
<body id="lift" x="0" y="100" frame="box406" density="0"/>
<switch id="button" x="0" y="77" script="press" labParent="lift"/>
<wheels x="0" y="35"/><ball x="-1000" y="35"/>
<star x="2000" y="0"/></lv>''')
sim = Simulation(50, root)
sim.body(sim.lookup['lift']).position = (20, 0)
sim.step(0, 1)
assert sim.lua.globals().hits == 0, 'Old button position still triggers'
dx, dy = 20-sim.car.position.x, 1-sim.car.position.y
for body in [sim.car, *sim.wheels]:
    body.position = (body.position.x+dx, body.position.y+dy)
sim.step(0, 1)
assert sim.lua.globals().hits == 1, 'Moving hit area did not follow the button'
sim.step(0, 1)
assert sim.lua.globals().hits == 1, 'Button should activate only once'

design = read_design(50)
_, _, xml = build_design(design, SIZES)
saved = ET.fromstring(xml)
assert len([e for e in saved.findall('switch') if e.get('labParent')]) == 0
print('PASS: moving button hit areas and one-shot triggering; level 50 fixed '
      'button editor roundtrip preserved')
