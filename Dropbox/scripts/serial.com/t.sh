#!/bin/bash

# Port setting
stty -F /dev/ttyS0 raw speed 9600

# Loop
while [ 1 ]; do
        READ=`dd if=/dev/ttyS0 count=1`
        echo $READ
done
