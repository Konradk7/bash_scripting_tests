#!/bin/bash

DELAY=3

while [[ "$REPLY" != 0 ]]; do
clear
cat <<EOF
Please select:
1. Show system info.
2. Show disk space.
3. Show used home space.
0. Quit
EOF

read -p "Write chosen option [0-3] > "

if [[ "$REPLY" =~ ^[0-3]$ ]]; then
  if [[ "$REPLY" == 1 ]]; then
  echo "Host name: $HOSTNAME"
  uptime
  sleep "$DELAY"
elif [[ "$REPLY" == 2 ]]; then
  df -h
  sleep "$DELAY"
elif [[ "$REPLY" == 3 ]]; then
  if [[ "$(id -u)" -eq 0 ]]; then
  echo "Home space used (All users)"
  du -sh /home/*
else
  echo "Home space used ($USER)"
  du -sh "$HOME"
fi
  sleep "$DELAY"
fi
else
  echo "Invalid option"
  sleep "$DELAY"
fi
done

echo "Program has terminated"
