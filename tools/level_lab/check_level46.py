"""Verify complete catapult runs using only left/right controls.

Box2D lab physics approximates the Android engine; phone testing is separate.
"""
import math

from server import Simulation


def body(sim, ident):
    return sim.body(sim.lookup[ident])


def healthy(sim):
    assert not sim.warnings, sim.warnings
    assert all(math.isfinite(o[axis]) for o in sim.state()['objects']
               for axis in ('x', 'y', 'angle'))


def deliver(sim, cap, target):
    # Feather the throttle and brake before the car reaches the plank.
    for _ in range(600):
        desired = min(cap, max(-cap, (target - sim.car.position.x * 32) * 3))
        speed = sim.car.linearVelocity.x * 32
        sim.step(1 if speed < desired - 5 else -1 if speed > desired + 5 else 0, 1)
        if abs(sim.car.position.x * 32 - target) < 15:
            break
    assert not sim.active and not sim.won


def trigger_by_driving(sim):
    for _ in range(300):
        sim.step(-1, 1)
        if sim.active:
            break
    assert len(sim.active) == 1, 'Driving could not reach the release switch'
    assert body(sim, 'stone_gate') is not None
    scheduled = dict(sim.pending)
    assert len(scheduled) == 1
    assert abs(next(iter(scheduled.values())) - sim.time - 3) < .001
    sim.lua.globals().release()
    assert sim.pending == scheduled, 'Repeated activation postponed the drop'
    return sim.time


def finish(sim, triggered, expect_win=True):
    airborne = False
    for _ in range(600):
        sim.step(0, 1)
        if sim.time < triggered + 2.99:
            assert body(sim, 'stone_gate') is not None
        elif sim.time > triggered + 3.02:
            assert body(sim, 'stone_gate') is None
        if (sim.ball.linearVelocity.x * 32 < -50
                and sim.ball.linearVelocity.y * 32 > 180
                and -sim.ball.position.y * 32 < 0):
            airborne = True
        if sim.won:
            break
    healthy(sim)
    assert sim.won == expect_win, 'Cargo did not produce the expected goal result'
    if expect_win:
        assert airborne, 'Cargo reached the goal without a leftward catapult launch'
        assert -sim.ball.position.y * 32 < -150, 'Cargo did not reach the raised goal'
        assert sim.car.position.x * 32 < -240, 'Car should stay off the seesaw'


sim = Simulation(46)
sim.step(0, 60 * 120)
assert not sim.active and not sim.won
assert abs(body(sim, 'bridge').angle - math.radians(25)) < .03
assert abs(sim.ball.position.x * 32 + 415) < 2
assert abs(-body(sim, 'stone').position.y * 32 + 251) < 6
healthy(sim)

# Pushing without releasing the stone cannot bypass the raised goal.
sim.step(1, 60 * 20)
assert not sim.active and not sim.won
healthy(sim)

# Vary both speed and braking position, and assert the actual goal each time.
for cap in (100, 120, 140, 160, 180, 200, 220, 260):
    for target in (-310, -300, -290, -280, -270, -260, -250, -240):
        sim = Simulation(46)
        deliver(sim, cap, target)
        triggered = trigger_by_driving(sim)
        assert -body(sim, 'stone').position.y * 32 < -240
        finish(sim, triggered)

# Simple human-style controls: hold right, then hold left until the switch,
# then release. These runs use no speed controller or per-frame aiming.
for frames in (80, 85, 90, 95, 100, 105, 110, 115):
    sim = Simulation(46)
    sim.step(1, frames)
    finish(sim, trigger_by_driving(sim))

# Reversing too early leaves cargo short; too late pushes it past the launch arm.
for frames in (60, 70, 120, 130):
    sim = Simulation(46)
    sim.step(1, frames)
    for _ in range(300):
        sim.step(-1, 1)
        if sim.active:
            break
    if sim.active:
        finish(sim, sim.time, expect_win=False)
    else:
        sim.step(0, 600)
        assert not sim.won
        healthy(sim)

# Reset recreates the original-height supported stone and clears the timer.
sim = Simulation(46)
assert not sim.active and not sim.pending and not sim.won
assert body(sim, 'stone_gate') is not None
assert abs(-body(sim, 'stone').position.y * 32 + 255) < .1
healthy(sim)

print('PASS: level 46 idle stability, three-second release, original stone height, '
      '64 speed/braking goal runs, 8 simple-control goal runs, '
      '4 mistimed failures, and reset')
