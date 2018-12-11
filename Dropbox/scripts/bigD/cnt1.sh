#!/bin/bash
#lin=$(cat $1|wc|awk '{print $1}')
declare -i lin=6040
declare -a ar[$lin]
#declare -i nm=0
while IFS="::" read f{1..4}
do
nm="0"
nm=${ar[$f1]}
nm=$(($nm+1))
ar[$f1]=$nm
#	echo nm moved to array ${ar[$f1]}
#	echo -----------
done < $1
for i in $(seq 1 $lin)
do
echo user $i = ${ar[$i]} >> ~/ratNew.dat
echo user $i = ${ar[$i]}
done
