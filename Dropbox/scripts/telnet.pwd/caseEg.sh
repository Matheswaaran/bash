#!/bin/bash
#declare -i sc=0
while :
do
echo "Please type in your section [Type '1' for 'A' sec, '2' for 'B' sec, '3' for 'C' sec & type '4' for 'D' sec ]"
read sc
case $sc in
'1') sec='A' && break
;;
'2') sec='B' && break
;;
'3') sec='C' && break
;;
'4') sec='D' && break
;;
*) clear && echo "You must have entered wrong input. Please try again..."
;;
esac
done
echo "Your section is $sec"
