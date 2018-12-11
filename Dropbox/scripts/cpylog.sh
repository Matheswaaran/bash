#!/bin/bash
for i in `ls`
do 
echo =========================$i================================
#sshpass -p "shalom" rsync -rv "$i" "root@192.168.6.241:/home/user/hdd/82/" --progress
rsync -rv "$i" "/home/kannan/mount/82/$1" --progress
if [[ "$?" == "0" ]] ;then echo $i-done >> logcpy.log;else echo $i-failed >> logcpy.log;fi
done
