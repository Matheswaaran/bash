#!/bin/bash
pd=PSNACETIT
declare i n
for n in {17..26}
#for n in {37..46}
#for n in {59..68}
do
ping 192.168.6.$n -c 1
if [ $? = 0 ] 
then
echo working on $n...
sudo mount //192.168.6.$n/c$/Users/Administrator/Documents/ t/ -o username=Administrator,password=$pd
echo ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^done mounting $n...
#if [ -f "t/runner.exe" ]
#then 
#	echo --------------------------------------File exist in $i. Removing it!
#	sudo rm -f "t/runner.exe"
#else 
#	echo ______________________________________File $i NOT found at $i.
sudo cp runner.exe t/
sudo cp intelhaxm-android.exe t/ -f
sudo cp -r haxm-windows_v6_0_1 /t -f
#fi
echo done $n
sleep 1
sudo umount -f t
sleep 0.5
echo ______________________________________________done umount $n...
else
echo ==============================================computer $n is dead....
fi
done
#intelhaxm-android.exe
#runner.exe
#haxm-windows_v6_0_1
