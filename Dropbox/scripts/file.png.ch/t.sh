#!/bin/sh
tmp () {
echo ok $1
}
for i in {1..80..1} 
do 
umount /home/kannan/mount/client/ -f
#echo $i
#tmp $i
done
