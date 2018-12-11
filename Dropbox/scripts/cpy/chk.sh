#!/bin/bash
pd=PSNACETIT
declare i n
for n in {37..46}
do
echo working on $n...
mount //192.168.6.$n/c$/Users t/ -o username=Administrator,password=$pd
echo done mounting $n...
if [ -f t/Administrator/Desktop/intelhaxm-android.exe ]
then 	echo $i ============$i ok
else 	echo $i no
fi
sleep 1
umount t
echo done umount $n...
done
#intelhaxm-android.exe
