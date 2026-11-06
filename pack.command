#!/bin/sh
cd -- "$(dirname "$0")" || exit 1
/usr/bin/python3 tools/apk_build/build.py "$@"
result=$?
if [ -t 0 ]; then
  printf '%s' '按回车关闭窗口。'
  read -r pack_reply
fi
exit "$result"
