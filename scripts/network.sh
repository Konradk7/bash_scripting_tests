#!/bin/bash

value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]
then
  echo "Active network interface found"
elif [ $value -gt 1 ]
then
  echo "Multiple network interface found"
else
  echo "No Network found"
fi
