#!/usr/bin/env bash

for var in "${@}" 
do
  echo Adding package "$var"
  echo "$var" >> extra-packages
done
cat extra-packages | sort -u | tee extra-packages > /dev/null
