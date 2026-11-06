#!/bin/zsh
cd -- "${0:A:h}"
if ! /usr/bin/python3 -c 'import sys; sys.path.insert(0,"build/level-lab/python"); import Box2D,lupa' 2>/dev/null; then
  /usr/bin/python3 -m pip install --target build/level-lab/python -r tools/level_lab/requirements.txt || exit 1
fi
print '浏览器打开 http://127.0.0.1:8765 ；按 Ctrl+C 停止。'
/usr/bin/python3 tools/level_lab/server.py
