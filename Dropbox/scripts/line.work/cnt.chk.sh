#!/bin/bash
#cat in.lab.txt|
declare -i n=0
while read ln
do 
if [[ $(echo $ln|sed -n "/$2/ p") != "" ]]
then 
n=$(($n+1))
else 
:
fi
done < $1
echo $n
# this script is used to count the system of a particular configuration (given as 2nd parameter) in the file (given in the 1st parameter)
# usage <script name.sh> <file name.txt> <common letters of a configuration>
# e.g. $ cng.chk.sh file.txt INI 
