#!/bin/bash
declare -a new # Declaring "new" as Array
declare -a tst
declare -i nm=0
one=1
two=2
three=3
f1=one
f2=two
f3=three
new=(f1 f2 f3)
tst=(f{1..3})
#test=(f1 f2 f3)
echo ${new[0]} # This echos just "f1"
echo ${!new[1]} # This echos "one". I.e. Array value is regarded as variable and prints that value.
echo ${!tst[1]}
echo Printing using for loop
for i in {0..2}
do
echo ${new[$i]}
echo ${!new[$i]}
done
echo Printing using additive counting
for ii in {0..2}
do
echo ${new[$nm]}
nm+=1
done
