#!/bin/bash
cd "$(dirname "$0")"

APP="./learn-macos"
if [ ! -f "$APP" ]; then
  APP="./learn"
fi

if [ -f "$APP" ]; then
  chmod +x "$APP"
  "$APP" --multi
else
  echo "未找到 $APP。"
  echo "请确认本文件和 learn-macos 在同一个文件夹中。"
fi

echo
read -r -p "按回车退出..."
