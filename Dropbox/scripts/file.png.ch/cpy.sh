#!/bin/sh
if [[ $1 == "" ]]
then
echo Error running script!
echo usage: $0 \<full path of file/folder to be copied\>
else
mkdir ~/scr

#rnd=$((RANDOM % 99 + 9))
rnd=$(date|sed 's/\:/\ /g'|awk '{print $2"_"$3"_"$4"_"$5"_"$6}')
mkdir -p ~/scr
j=/home/kannan/rscript
k=/home/kannan/mount/client
l=Documents\ and\ Settings/Administrator
m=Users/Administrator
pwd1="maffei2"
pwd2="PSNACETIT"
cd ~/scr && echo unmounting:$k && umount $k -f
date > $j/log_del.txt
echo "SysIP:Found-Y/N:Mounted-Y/N" >> $j/log_del.txt
#=============While loop repeat================
while :
do
#echo "ls $j/sys/*.tx"
#if [[ -e "$j/sys/*.tx" ]]
if [[ "$(ls $j/sys/ | wc -l)" -ne 0 ]]
then
for i in {1..80..1}
do
if [[ -f "$j/sys/$i.tx" ]]
then
echo ==============
echo Trying IT$i...
echo ==============
	ping 192.168.6.$i -c 1 > /dev/null
	if [ $? = 0 ]
	then
		echo trying as AMD!
		mount //192.168.6.$i/c$ $k/ -o username=Administrator,password=$pwd1
		if [ -d "$k/TC" ]
		then
			echo Its AMD!
			rsync -rv $1 $k/$l/Desktop --progress
			rm -f $j/sys/$i.tx
			echo ====================================================================IT$i is done!...
		else
			cd ~/scr && echo unmounting:$k && umount $k -f
			echo trying as I5
			mount //192.168.6.$i/c$ $k/ -o username=Administrator,password=$pwd2
			if [ -d "$k/TurboC++" ]
                	then
				echo Its I5
				rsync -rv $1 $k/$m/Desktop --progress	
				rm -f $j/sys/$i.tx
				echo ====================================================================IT$i is done!...
			else
				if [[ $(cat $j/log_del.txt|grep IT$i\:Y\:N) == "" ]]; then echo IT$i\:Y\:N >> $j/log_del.txt; else :;fi
			fi
		fi
		cd ~/scr && echo unmounting:$k && umount $k -f
	else
		echo ==============IT$i is down...================
	fi
else
	:
fi
done	# for 'for loop'
sleep 5
else
echo breaking script && break
fi
done	# for 'while loop'
echo Attempt success!
cd ~/
rmdir ~/scr
# HOW TO USE THIS SCRIPT
# Just create empty 'tx' file in the name of ip in which the computers you want to delete. For e.g. if the computer ip is 22, you have to 
# create '22.tx' file under the folder /home/kannan/rscript/sys/. Set the linux machine to NO GUI/multiuser mode [init 3]. And run the script
# /home/kannan/Dropbox/scripts/file.png.ch/mov.sh
# FUTURE WORKS
# Delete: Windows/Temp/* @ I5 pcs and also in AMD
# Delete: Users/user/AppData/Local/Temp/* |Users/TEMP.*/AppData/Local/Temp/* for I5 & also in AMD
fi                                                                            
