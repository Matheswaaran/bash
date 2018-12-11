#!/bin/bash
pd=PSNACETIT
#pt="ProgramData/Microsoft/Windows/Start Menu/Programs/Oracle - OraClient10g_home1/Application Development"
pt="Program Files/NetBeans 7.1/ide/modules/ext"
#pt=Users/Administrator/clean
declare i n
#for n in {1..10}
#for n in {17..26}
#for n in {37..46}
for n in {59..68}
do
ping 192.168.6.$n -c 1 > /dev/null
if [[ $? == 0 ]]
then
	echo working on $n...
	mount //192.168.6.$n/c$/ t/ -o username=Administrator,password=$pd
	echo done mounting $n...
	#if [ -f "/t/runner.exe" ]
	if [[ -f "t/$pt/ojdbc14.jar" ]]
	then 
		echo File exist in $n
	else 
		echo File NOT found at $n. Copying...
		#cp runner.exe t/$pt/ -f
		cp "/home/kannan/ojdbc14.jar" "t/$pt" -f
	fi
	echo done $n
	umount -f t
	sleep 1
	echo done umount $n...
else
	echo system $n is down...
	echo $n >> dwnPC.txt
fi
done
#intelhaxm-android.exe
#runner.exe
#/home/kannan/mount/user/Users/Administrator/Documents
#SQL Plus W7.exe
#ojdbc14.jar.zip
#Program Files/NetBeans 7.1/ide/modules/ext
#pt=Users/Administrator/clean
