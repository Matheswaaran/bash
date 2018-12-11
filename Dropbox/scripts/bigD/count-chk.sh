#!/bin/bash
declare -a ar[10]
declare -i nm
cat $1|while IFS="," read f{1..4}
do
echo printing f1 $f1
nm=${ar[$f1]}
echo printing nm $nm
nm=$(($nm+1))
echo printing nm+1 $nm
ar[$f1]=$nm
echo print array of $f1 ${ar[$f1]}
done < <(cat $1)
for i in {1..10}
do
#echo user $i = ${ar[$f1]} >> ~/ratNew.dat
echo val $i = ${ar[$f1]} 
done
