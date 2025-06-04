#!/bin/bash

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk ' {print $9}'`
ROOTFREE=$(df -h | grep '/dev/sdal' | awk ' {print $4}')

echo "Available free RAM is $FREERAM MB"
echo "Current Load Average $LOAD"
echo "Free ROOT partition size is $ROOTFREE"

