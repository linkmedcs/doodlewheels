"""Smoke-check every real map and authored switch without changing game files."""
import math
from server import Simulation, levels

assert [d['level'] for d in levels()] == list(range(1, 61))
switches = 0
for number in range(1, 61):
    sim = Simulation(number)
    for entry, function in sim.switches:
        data = entry['data']
        sim.ball.position = (data['x'] / 32, -data['y'] / 32)
        sim.step(0, 1)
        switches += 1
    for drive in (1, -1, 0):
        sim.step(drive, 180)
    assert len(sim.active) == len(sim.switches), number
    assert all(math.isfinite(o['x']) and math.isfinite(o['y']) for o in sim.state()['objects']), number
    assert not any('异常' in w or '未完整' in w for w in sim.warnings), (number, sim.warnings)
print(f'PASS: 60 levels loaded; {switches} switch callbacks executed; mixed-direction physics remains finite')
