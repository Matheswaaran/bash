#!/bin/sh
echo " " > k
for i in {1..10..1}
do
#echo $i
pd=$((RANDOM % 100+10))
echo $i ---- $pd
echo ============
done
