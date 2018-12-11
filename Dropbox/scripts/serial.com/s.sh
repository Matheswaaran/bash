#!/bin/bash
stty -F /dev/ttyACM0 raw speed 9600
while :
do
read comnn < /dev/ttyACM0
echo $comnn
done 
