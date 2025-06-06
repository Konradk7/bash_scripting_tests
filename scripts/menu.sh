#!/bin/bash

clear
echo "
Please select:

1. Show system info
2. Show disk space
3. Show used home space
4. Quit
"
read -p "Write select option [0-3] > "

if [["$REPLY" =~ ^[0-3]$ ]]; then
    echo "Program has terminated"
    exit
  fi
  if [[ "$REPLY" == 1 ]]; then
    echo "Host name: $HOSTNAME"
    uptime
    exit
  fi
  if [[ "$REPLY" == 2 ]]; then
    df -h
    exit
  fi
  if [[ "$REPLY" == 3 ]]; then
    if [[ "$(id -u)" -eq 0 ]]; then
      echo "Home space used (every users)"
      du -sh /home/*
    else
      echo "Home space used ($USER)"
      du -sh "$HOME"
    fi
    exit
  fi
else
  echo "Invalid option" >&2
  exit 1
fi
