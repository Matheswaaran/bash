#!/bin/sh

j=/home/kannan/rscript
k=/home/kannan/mount/client
pwd1="maffei2"
date > $j/log_i5.txt
for i in {1..80..1}
do
#echo $i
#echo $jInd$i.bat
#if [ -f "$jInd$i.bat" ]
#then
echo ==============
echo Trying IT$i...
echo ==============
	ping 192.168.6.$i -c 1
	if [ $? = 0 ]
	then
		mount //192.168.6.$i/c$ $k/ -o username=Administrator,password=$pwd1
#		test -d $kTsk && cp $jInd$i.bat $kTsk -f || echo $i Not mounted >> $j/log.txt
		if [ -d "$k/Windows" ]
		then
			cp $j/EGAVGA.BGI $k/TurboC++/Disk/TurboC3/BIN/ -f
			if [ -f $k/TurboC++/Disk/TurboC3/BIN/EGAVGA.BGI ]
			then
				echo ==============
				echo IT$i is done!...
				echo ==============
				umount $k -f
			else
				umount $k -f
				echo copy failed in IT$i... >> $j/log_i5.txt
			fi
		else
			echo IT$i found but Not mounted! >> $j/log_i5.txt
			umount $k -f
		fi
	else
		echo ==============IT$i is down...================
	fi
#else
# 	echo .
#fi
done
