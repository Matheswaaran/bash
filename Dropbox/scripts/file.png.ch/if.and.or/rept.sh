#!/bin/sh
#sleep 3
#date
#date > log.log
#if [[ -f /home/kannan/test/file.png.ch/if.and.or/wrkspc/3.txt ]]
#then
#	echo txt file found
#else
#	:
#fi
#done
f=/home/kannan/test/file.png.ch/if.and.or

while :
do
	sleep 1
	if [[ "$(ls $f/wrkspc/ |wc -l)" -ne 0 ]]
	then
		echo File exist. Hit cntrl + c
	else
		echo no file found. exiting!
		break
	fi
	#echo press control+c to stop
#	break
done
