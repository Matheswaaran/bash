#!/bin/bash
declare -a ar[6040]
declare -i nm
while IFS="::" read f{1..4}
do
nm=${ar[$f1]}
nm+=1
ar[$f1]=$nm
done < $1
for i in {1..6040}
do
echo user $i = ${ar[$f1]} >> ~/ratNew.dat
echo user $i = ${ar[$f1]} 
done
