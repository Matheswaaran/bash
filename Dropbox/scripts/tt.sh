#!/bin/bash
declare -i i
lf=0
for i in {1..85}
do
if [[ $(cat MACADRS.DAT|sed -n "/[.]$i[=]/ p") != "" ]]
then 
echo 192.168.6.$i found...
lf="$i" #last found ip number
else
if [[ $lf = "0" ]];then sr="1" && a="i";else sr="/[.]$lf[=]/" && a="a";fi
echo =============$i not found. inserting using sed 
sed -i "$sr $a 192.168.6.$i=0" MACADRS.DAT
lf="$i" #last found ip number
fi
done
