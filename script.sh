#!/bin/bash

p () {
ip addr | grep /24 | cut  -d "." -f 3
}
cut="$(p)"

for (( c=1; c<=225; c++ ))
  do
    if  ping -b -c 1 -s 1 192.168.$cut.$c &>/dev/null
    then
      echo "DEVICE FOUND 192.168.$cut.$c"
    fi
  done
