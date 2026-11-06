#!/bin/zsh
cd -- "${0:A:h}" || exit 1
/usr/bin/python3 tools/apk_build/build.py "$@"
result=$?
if [[ -t 0 ]]; then
  read -r "?按回车关闭窗口。"
fi
exit $result
