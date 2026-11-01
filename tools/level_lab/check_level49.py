"""Check a few playable bounce-and-deliver routes; Android physics is separate."""
import math
from server import Simulation


def contact(sim, a, b):
    return any(c.touching and {c.fixtureA.body, c.fixtureB.body} == {a, b}
               for c in sim.world.contacts)


def attempt(pause=None):
    sim = Simulation(49)
    spring = sim.body(sim.lookup['spring'])
    platforms = [sim.body(key) for ident, key in sim.lookup.items()
                 if ident.startswith('landing_')]
    events = {}; pushed = 0
    for frame in range(1800):
        drive = 0 if pause and pause[0] <= frame < pause[1] else 1
        sim.step(drive, 1)
        for name, bodies in [('ball', [sim.ball]), ('car', [sim.car, *sim.wheels])]:
            if any(contact(sim, b, spring) for b in bodies):
                events.setdefault(name+'_spring', sim.time)
            if name+'_spring' in events and any(b.linearVelocity.y > 1 for b in bodies):
                events.setdefault(name+'_up', sim.time)
        if 'ball_up' in events and -sim.ball.position.y*32 < 200 and any(contact(sim, sim.ball, p) for p in platforms):
            events.setdefault('ball_land', sim.time)
        if 'car_up' in events and -sim.car.position.y*32 < 200 and any(contact(sim, w, p) for w in sim.wheels for p in platforms):
            events.setdefault('car_land', sim.time)
        if 'ball_land' in events and 'car_land' in events and any(contact(sim, sim.ball, b) for b in [sim.car, *sim.wheels]):
            pushed += 1
        if sim.won:
            break
    assert not sim.warnings, sim.warnings
    assert sim.won, (pause, events)
    assert events['ball_spring'] < events['car_spring']
    assert events['ball_land'] < events['car_land']
    assert pushed > 0, 'Cargo reached the goal without a final vehicle push'
    assert sim.car.position.x*32 > 2800
    assert abs(math.atan2(math.sin(sim.car.angle), math.cos(sim.car.angle))) < .2
    assert all(math.isfinite(o[k]) for o in sim.state()['objects'] for k in ('x', 'y', 'angle'))
    return round(sim.time, 3)


times = [attempt(pause) for pause in (None, (350,380), (400,430), (450,480))]
# Coasting after the jump does not finish this route: the final push is required.
sim = Simulation(49)
sim.step(1, 260); sim.step(0, 1800)
assert not sim.won
# Both objects start supported and do not complete the level on their own.
sim = Simulation(49); sim.step(0, 600)
assert not sim.won and abs(sim.ball.position.x*32+580) < 1
print('PASS: level 49 four complete ball-first/car-second bounce and landing runs, '
      'final vehicle push, no-input/coasting failures; goal times:', times)
