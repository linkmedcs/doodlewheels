"""Check solid chain collisions; the old sensor-only win routes are obsolete."""
import math
import xml.etree.ElementTree as ET
from server import Simulation
from Box2D import b2RopeJoint

WARNING = '链条按原版绳索约束重建；车辆与接触仍为近似模拟'


def body(sim, ident):
    return sim.body(sim.lookup[ident])


def contact(sim, a, b):
    return any(c.touching and {c.fixtureA.body, c.fixtureB.body} == {a, b}
               for c in sim.world.contacts)


# Both original and expansion chain assemblies keep their native rope limits
# and solid fixtures, even when source XML labels their links as sensors.
for number in (26, 47):
    sim = Simulation(number)
    ropes = [j for j in sim.world.joints if isinstance(j, b2RopeJoint)]
    assert ropes and all(abs(j.maxLength-.6) < 1e-5 for j in ropes)
    assert all(not f.sensor for j in ropes for b in (j.bodyA, j.bodyB)
               for f in b.fixtures)
    assert sim.warnings == [WARNING]

# A native-sized chain plank must physically stop cargo and a complete car.
# Isolate the collision from the swing, using the real create26 initialization.
root = ET.fromstring('''<lv><script><![CDATA[
function init() create26("anchor", "connector", "end") end
]]></script>
<body id="anchor" x="0" y="0" rotation="90" frame="box87" density="0" isSensor="true"/>
<body id="connector" x="100" y="-200" frame="circle20" density=".2" isSensor="true"/>
<body id="end" x="200" y="-200" frame="box87" density="0" isSensor="true"/>
<body id="unrelated_sensor" x="1000" y="1000" frame="box87" density="0" isSensor="true"/>
<wheels x="-160" y="0"/><ball x="-80" y="0"/><star x="2000" y="0"/>
</lv>''')
for target in ('ball', 'vehicle'):
    sim = Simulation(47, root)
    sim.world.gravity = (0, 0)
    if target == 'ball':
        for b in [sim.car, *sim.wheels]:
            b.position = (b.position.x-100, 0)
        bodies = [sim.ball]
    else:
        sim.ball.position = (-100, 20)
        bodies = [sim.car, *sim.wheels]
    for b in bodies:
        b.linearVelocity = (8, 0)
    hit = False
    for _ in range(90):
        sim.step(0, 1)
        hit |= any(contact(sim, b, body(sim, 'anchor')) for b in bodies)
    assert hit, target+' never collided with the chain'
    assert all(b.position.x < 0 for b in bodies), target+' passed through the chain'
    assert body(sim, 'unrelated_sensor').fixtures[0].sensor

# Reproduce the former advertised route with solid chains. It must record real
# ball/chain contacts; do not keep asserting the obsolete sensor-based wins.
sim = Simulation(47)
chain = [body(sim, ident) for ident in sim.lookup if ident.startswith(('left_', 'right_'))]
hit = False
for drive, frames in ((0, 300), (1, 45), (-1, 30), (0, 900)):
    for _ in range(frames):
        sim.step(drive, 1)
        hit |= any(contact(sim, sim.ball, b) for b in chain)
assert hit and not sim.won
assert all(math.isfinite(o[k]) for o in sim.state()['objects'] for k in ('x', 'y', 'angle'))
print('PASS: level 26/47 solid chain fixtures and rope limits; ball and vehicle '
      'blocked by chain; unrelated sensors preserved; former route no longer passes through')
