#!/usr/bin/env python3
"""Read-only level preview and approximate Box2D/Lua playground."""
import sys
from pathlib import Path
ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'build/level-lab/python'))
import json
import math
import plistlib
import re
import uuid
import xml.etree.ElementTree as ET
from http.server import BaseHTTPRequestHandler, HTTPServer
from Box2D import b2World, b2Filter
from lupa import LuaRuntime

ASSETS = ROOT / 'decompiled/apktool/assets'
ATLAS = plistlib.loads((ASSETS / 'res/entity.plist').read_bytes())['frames']
NUMBERS = lambda value: [int(x) for x in re.findall(r'-?\d+', value)]
SIZES = {k: NUMBERS(v['sourceSize']) for k, v in ATLAS.items()}
TEXT = {e.tag: e.get('zh', '') for e in ET.parse(ASSETS / 'res/strings.xml').getroot()}
SESSIONS = {}


def levels():
    result = []
    for n in range(1, 61):
        text = (ASSETS / f'lvs/v{n}.dwl').read_text()
        title = re.search(r'Original expansion course \d+: (.*?)-->', text)
        result.append(dict(level=n, title=title.group(1).strip() if title else f'原版关卡 {n}', group='原版' if n <= 45 else '扩展'))
    return result


class Simulation:
    def __init__(self, number):
        root = ET.parse(ASSETS / f'lvs/v{number}.dwl').getroot()
        self.world = b2World(gravity=(0, -10))
        self.items, self.lookup, self.switches, self.pending = [], {}, [], {}
        self.time, self.won, self.active = 0, False, set()
        self.warnings = []
        self.joints = []
        self.moving = {}
        self.bykey = {}
        self.script = root.findtext('script') or ''
        self.lua = LuaRuntime(register_eval=False, register_builtins=False)
        self.lua.execute('os=nil; io=nil; package=nil; debug=nil; python=nil; require=nil; dofile=nil; loadfile=nil')
        xy = lambda e: (float(e.get('x')) / 32, -float(e.get('y')) / 32)

        def item(e, body=None, kind=None, frame=None, w=None, h=None, key=None):
            key = key or f'item{len(self.items)}'
            frame = frame or e.get('frame') or e.tag
            size = SIZES.get(frame, [30, 30])
            data = dict(key=key, id=e.get('id'), kind=kind or e.tag, frame=frame,
                        w=w or size[0], h=h or size[1], x=float(e.get('x', 0)),
                        y=float(e.get('y', 0)), angle=math.radians(float(e.get('rotation', 0))),
                        alpha=float(e.get('opacity', 1)), dynamic=bool(body and body.type),
                        circle=e.get('isCircle') == 'true', text=TEXT.get(e.get('text'), e.get('text', '')))
            entry = dict(data=data, body=body)
            self.items.append(entry); self.bykey[key] = entry
            if e.get('id'): self.lookup.setdefault(e.get('id'), key)
            return entry

        for e in root:
            if e.tag == 'body':
                density = float(e.get('density', 0)); w, h = SIZES[e.get('frame')]
                b = (self.world.CreateDynamicBody if density else self.world.CreateStaticBody)(position=xy(e), angle=-math.radians(float(e.get('rotation', 0))))
                kw = dict(density=density, friction=float(e.get('friction', '.9')), restitution=float(e.get('restitution', '.3')), isSensor=e.get('isSensor') == 'true')
                if e.get('isCircle') == 'true': b.CreateCircleFixture(radius=max(1, w-4)/64, **kw)
                else: b.CreatePolygonFixture(box=(max(1, w-4)/64, max(1, h-4)/64), **kw)
                item(e, b)
            elif e.tag == 'ball':
                self.ball = self.world.CreateDynamicBody(position=xy(e), linearDamping=.2, angularDamping=.2)
                self.ball.CreateCircleFixture(radius=42/64, density=.5, friction=.07, restitution=.4)
                item(e, self.ball, frame='ball')
            elif e.tag == 'wheels':
                x, y = xy(e); self.wheels = []
                for i, dx in enumerate((-37/32, 37/32)):
                    b = self.world.CreateDynamicBody(position=(x+dx, y), linearDamping=.2, angularDamping=.3)
                    b.CreateCircleFixture(radius=56/64, density=.5, friction=.9, restitution=.4, filter=b2Filter(groupIndex=-1))
                    item(e, b, 'wheel', 'wheel', 59, 59, f'wheel{i}'); self.wheels.append(b)
                self.car = self.world.CreateDynamicBody(position=(x, y))
                self.car.CreatePolygonFixture(box=(129/64, 55/64), density=.5, friction=0, filter=b2Filter(groupIndex=-1))
                item(e, self.car, 'car', 'wheels', 133, 59)
                for b in self.wheels: self.world.CreateRevoluteJoint(bodyA=b, bodyB=self.car, anchor=b.position)
            elif e.tag in ('star', 'switch', 'sprite', 'label'):
                entry = item(e)
                if e.tag == 'star': self.goal = xy(e)
                if e.tag == 'switch': self.switches.append((entry, e.get('script')))

        g = self.lua.globals()
        g.find = lambda ident: self.lookup.get(str(ident))
        g.color = self.color
        g.rdcolor = lambda key, *args: self.color(key, .5, .55, .6)
        g.opacity = self.opacity
        g.remove = self.remove
        g.create26 = self.bridge
        g.create23 = self.linkage
        g.createjoint10 = self.lift
        g.active10 = self.activate_lift
        try:
            self.lua.execute(self.script)
            if g.init: g.init()
        except Exception as e:
            self.warn('Lua 初始化未完整执行：' + str(e).split('\n')[0])

    def warn(self, message):
        if message not in self.warnings: self.warnings.append(message)

    def color(self, key, r, g, b):
        if key in self.bykey: self.bykey[key]['data']['tint'] = [float(r), float(g), float(b)]

    def opacity(self, key, value):
        if key in self.bykey: self.bykey[key]['data']['alpha'] = float(value)

    def remove(self, key, delay=0):
        if key in self.bykey: self.pending[key] = self.time + max(0, float(delay))

    def body(self, key):
        return self.bykey.get(key, {}).get('body')

    def pin(self, a, b):
        if not a or not b or a == b or (a.type == 0 and b.type == 0): return
        p = ((a.position.x+b.position.x)/2, (a.position.y+b.position.y)/2)
        self.world.CreateRevoluteJoint(bodyA=a, bodyB=b, anchor=p)

    def bridge(self, a, h, b):
        self.warn('桥梁铰链为近似实现')
        keys = [self.lookup.get(str(x)) for x in (a, h, b)]
        if any(k is None for k in keys):
            self.warn('部分桥梁引用不存在，相关连接已跳过'); return
        self.pin(self.body(keys[0]), self.body(keys[1])); self.pin(self.body(keys[1]), self.body(keys[2]))

    def linkage(self, *keys):
        self.warn('第 23 关联动机构使用近似连接，运动可能与原引擎不同')
        for a, b in zip(keys, keys[1:]): self.pin(self.body(a), self.body(b))

    def lift(self, key, anchor):
        self.warn('升降机关采用近似直线运动')
        a, b = self.body(key), self.body(anchor)
        self.joints.append((key, b.position.y if b else (a.position.y+6 if a else 0)))
        return len(self.joints)-1

    def activate_lift(self, key, joint):
        if key in self.bykey and 0 <= int(joint) < len(self.joints):
            self.body(key).type = 1; self.moving[key] = self.joints[int(joint)][1]

    def step(self, drive, frames):
        for _ in range(frames):
            if self.won: break
            for w in self.wheels:
                if abs(w.angularVelocity) <= 23 or w.angularVelocity*drive > 0: w.ApplyTorque(-80.625*drive, True)
            for key, target in list(self.moving.items()):
                b = self.body(key)
                if not b: self.moving.pop(key); continue
                delta = target-b.position.y
                if abs(delta) < .04: b.linearVelocity=(0,0); b.type=0; self.moving.pop(key)
                else: b.linearVelocity=(0, max(-2, min(2, delta*4)))
            self.world.Step(1/60, 8, 8); self.time += 1/60
            for entry, fn in self.switches:
                d = entry['data']; key = d['key']
                if key in self.active: continue
                x,y=d['x']/32,-d['y']/32
                if any(abs(b.position.x-x)<r and abs(b.position.y-y)<1.6 for b,r in [(self.ball,1.25),(self.car,2.6)]+[(w,1.5) for w in self.wheels]):
                    self.active.add(key)
                    try:
                        func=self.lua.globals()[fn]
                        if func: func()
                        else: self.warn(f'开关函数不存在：{fn}')
                    except Exception as e: self.warn(f'开关执行异常：{str(e).splitlines()[0]}')
            for key, when in list(self.pending.items()):
                if self.time >= when:
                    entry=self.bykey.pop(key, None)
                    if entry:
                        if entry['body']: self.world.DestroyBody(entry['body'])
                        self.items.remove(entry)
                    self.pending.pop(key)
            self.won = math.hypot(self.ball.position.x-self.goal[0], self.ball.position.y-self.goal[1]) < 1

    def state(self):
        objects=[]
        for entry in self.items:
            d=dict(entry['data']); b=entry['body']
            if b: d.update(x=b.position.x*32, y=-b.position.y*32, angle=-b.angle)
            if d['kind']=='switch': d['frame']='switch_1' if d['key'] in self.active else 'switch'
            objects.append(d)
        return dict(objects=objects, time=round(self.time,3), won=self.won, warnings=self.warnings)


class Handler(BaseHTTPRequestHandler):
    def log_message(self, *args): pass
    def send(self, data, code=200, mime='application/json; charset=utf-8'):
        if not isinstance(data, bytes): data=json.dumps(data, ensure_ascii=False).encode()
        self.send_response(code); self.send_header('Content-Type', mime); self.send_header('Cache-Control','no-store'); self.send_header('Content-Length',str(len(data))); self.end_headers(); self.wfile.write(data)
    def do_GET(self):
        if self.path in ('/', '/index.html'): return self.send(Path(__file__).with_name('index.html').read_bytes(), mime='text/html; charset=utf-8')
        if self.path=='/api/levels': return self.send(levels())
        if self.path=='/api/atlas': return self.send(ATLAS)
        if self.path=='/entity.png': return self.send((ASSETS/'res/entity.png').read_bytes(),mime='image/png')
        self.send({'error':'不存在'},404)
    def do_POST(self):
        try:
            d=json.loads(self.rfile.read(min(int(self.headers.get('Content-Length',0)),4096)))
            if self.path=='/api/load':
                n=int(d['level'])
                if not 1<=n<=60: raise ValueError('关卡范围为 1～60')
                s=Simulation(n); key=uuid.uuid4().hex
                if len(SESSIONS)>=16: SESSIONS.pop(next(iter(SESSIONS)))
                SESSIONS[key]=s
                return self.send(dict(session=key, **s.state()))
            if self.path=='/api/step':
                s=SESSIONS[d['session']]; s.step(max(-1,min(1,int(d.get('drive',0)))),max(0,min(12,int(d.get('frames',1)))))
                return self.send(s.state())
            self.send({'error':'不存在'},404)
        except (ValueError,KeyError,ET.ParseError) as e: self.send({'error':str(e)},400)


if __name__=='__main__':
    import argparse
    p=argparse.ArgumentParser();p.add_argument('--port',type=int,default=8765);args=p.parse_args()
    server=HTTPServer(('127.0.0.1',args.port),Handler)
    print(f'关卡实验室：http://127.0.0.1:{args.port} （Ctrl+C 停止）',flush=True)
    server.serve_forever()
