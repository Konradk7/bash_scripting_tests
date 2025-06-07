#!/bin/bash

clear
echo "
Please select:

1. Show system info.
2. Show disk space.
3. Show home space used.
0. Quit.
"
read -p "Select option [0-3] > "

case "$REPLY" in
  0) echo "Program has terminated."
     exit
     ;;
  1) echo "Host name: $HOSTNAME"
     uptime
     ;;
  2) df -h
     ;;
  3) if [[ "$(id -u) " -eq 0 ]]; then
	echo "Home space used (All Users)"
	du -sh /home/*
     else
	echo "Home space used ($USER)"
	du -sh "$HOME"
     fi
     ;;
  *) echo "Invalid option " >&2
     exit 1
     ;;
esac
