#!/bin/bash

read -p "Enter a number: " NUM
echo

if [ $NUM -gt 100 ]
then
  echo "w8"
  sleep 2
  echo "Your number is greater than 100!"
  echo
  date
else
  echo "You have entered number less than 100"
fi

echo "script is finished"
