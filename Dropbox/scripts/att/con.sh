#!/bin/bash
echo "\"Year/sec\",\"ses-1\",\"ses-2\",\"ses-3\",\"ses-4\",\"ses-5\",\"ses-6\"" > con.csv
for i in {2..4};do
for j in {A..D};do
for ln in `ls data/$i-$j-*.dat`;do
if [[ -f $ln ]];then se=$(cat $ln) && nr=$(echo $ln|awk -F'[-|.]' '{print $3}') 
for ((ar=0;ar<=$(echo $se|wc -L)-1;ar++));do eval "ay${se:$ar:1}[$nr]=$nr";done;else :;fi
done
echo "\"$i-$j\",\"$(echo ${ay1[*]}|sed 's/\ /,/g')\",\"$(echo ${ay2[*]}|sed 's/\ /,/g')\",\"$(echo ${ay3[*]}|sed 's/\ /,/g')\",\"$(echo ${ay4[*]}|sed 's/\ /,/g')\",\"$(echo ${ay5[*]}|sed 's/\ /,/g')\",\"$(echo ${ay6[*]}|sed 's/\ /,/g')\"" >> con.csv 
unset ay1[*] && unset ay2[*] && unset ay3[*] && unset ay4[*] && unset ay5[*] && unset ay6[*] 
done;done
