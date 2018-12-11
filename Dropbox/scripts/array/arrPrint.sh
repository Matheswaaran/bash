#!/bin/bash
declare -a tst
declare -a snd
f1=one
f2=two
f3=three
tst=(f{1..3})
echo ${!tst[1]}
echo ${tst[*]}
#echo ${!tst[*]} # Not working. Printing the ith places Not the values. So am using another array 'snd' to store & print values.
for i in {0..2}
do
echo ${!tst[$i]} 
snd[$i]=${!tst[$i]},
done
echo ${snd[*]}
