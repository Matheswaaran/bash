#!/bin/bash
while read -r comn
do
if [[ $comn != "" ]]
then echo $comn
else :
fi
done < /dev/ttyS2
