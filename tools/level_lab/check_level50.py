"""Check the level 50 redesign scaffold; this is not a completion-route test."""
from server import Simulation

sim = Simulation(50)
assert len(sim.switches) == 1
assert not sim.joints and not sim.attachments
assert len([name for name in sim.lookup if name.startswith('pebble_')]) == 30
assert not any(name.startswith(('lift_', 'cargo_lift', 'return_')) for name in sim.lookup)
sim.step(0, 120)
assert not sim.lua.globals().armed and not sim.won
sim.lua.globals().release_stones()
assert sim.lua.globals().armed
assert set(sim.pending) == {sim.lookup['hopper_gate']}
sim.step(0, 1)
assert sim.lookup['hopper_gate'] not in sim.bykey
sim.lua.globals().release_stones()
assert not sim.pending
print('PASS: level 50 minimal hopper scaffold and one-shot stone release')
