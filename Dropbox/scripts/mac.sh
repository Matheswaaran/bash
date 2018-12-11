#!/bin/bash
lf=0
for i in {1..85}
do 
ping 192.168.6.$i -c 1
if [ $? = 0  ]
then
	echo 192.168.6.$i=$(sudo nmap -sS -O 192.168.6.$i|sed -n '/MAC/ p'|while IFS=" "  read f{1..5};do echo $f3;done) >>  MACADRS.DAT
	echo 192.168.6.$i=$(sudo nmap -sS -O 192.168.6.$i|sed -n '/MAC/ p'|while IFS=" "  read f{1..5};do echo $f3;done)
	# (or) echo 192.168.6.$i=$(sudo nmap -sS -O 192.168.6.$i|grep 'MAC '|awk '{print $3}')
else
	System Number 192.168.6.$i found dead or unreacheable\!...
fi
done
# the below line is to find the missing ip from the file "MACADRS.DAT"
#for i in {1..80};do if [[ $(cat MACADRS.DAT|grep "192.168.6.$i="|while IFS="=" read f1 f2;do echo $f1;done) = "192.168.6.$i" ]];then echo 192.168.6.$i----FOUND;else echo 192.168.6.$i-------------NOT FOUND;fi;done

