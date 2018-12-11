#!/bin/bash
ping 192.168.6.$1 -c 1 > /dev/null
if [[ $? == 0 ]]
then
  echo ok
else
  echo ng
fi
