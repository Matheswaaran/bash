#!/bin/bash
date +"%T.%3N" >> "$(echo $1|sed 's/\.sh//g')".time
declare -i i=0
declare -i j=0
declare -i t=0
declare -a ar
ar=($(cat $1|while IFS=" " read f{1..5};do echo $f4;done))
#echo $1|while IFS=" " read f{1..5};do echo $f1 $f2 $f3 $f4 $f5;done
for j in {1..6040}
do
echo "comparing  ${ar[$(($i-1))]} -lt ${ar[$i]}" >> "$(echo $1|sed 's/\.sh//g')".comp
for ((i=$j;i<=1;i--))
do
if [[ ${ar[$(($i-1))]} -lt ${ar[$i]} ]]
then 
t=${ar[$i]} && ar[$i]=${ar[$(($i-1))]} && ar[$(($i-1))]=$t
else
break;
fi
done
done
for i in {1..6040};do echo ${ar[$i]};done
date +"%T.%3N" >> "$(echo $1|sed 's/\.sh//g')".time
#ar[0]=$f
#ar[1]=$s
#if [[ ${ar[0]} -gt ${ar[1]} ]]
#then echo first no. is high
#else echo second no. is high
#fi
