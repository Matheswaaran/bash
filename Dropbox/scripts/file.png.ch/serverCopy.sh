

j=/home/kannan/rscript
k=/home/kannan/mount/client
pwd1="PSNACETIT"
date > $j/log.txt
for i in {1..80..1}
do
#echo $i
echo =======================================
echo Trying $j/Ind$i.bat
echo =======================================
if [ -f "$j/Ind$i.bat" ]
then
	ping 192.168.6.$i -c 1
	if [ $? = 0 ]
	then
		mount //192.168.6.$i/c$/windows/system32/ $k -o username=Administrator,password=$pwd1
#		test -d $kTsk && cp $jInd$i.bat $kTsk -f || echo $i Not mounted >> $j/log.txt
		if [ -d $k/Tsk1 ]
		then
			cp $j/Ind$i.bat $k/Tsk -f
			if [ -f $k/Tsk/Ind$i.bat ]
			then
				echo =======================================
				echo copy Ind$i done...
				echo =======================================
				rm -f $j/Ind$i.bat
				umount $k -f
			else
				umount $k -f
				echo IT$i found but Ind$i.bat copy failed... >> $j/log.txt
			fi
		else
			echo IT$i mount failed >> $j/log.txt
			umount $k -f
		fi
	else
		echo ================IT$i is down...===================
	fi
else
	echo .
fi
done
