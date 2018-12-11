#!/bin/bash
declare -a new # Declaring "new" as Array
f1=one
f2=two
f3=three
new=(f{1..3})
for i in {0..5} 
do
echo $i
if [[ "${!new[$i]}" != "one" && "${!new[$i]}" != "three" ]]
	then
	echo true part. current value is ${!new[$i]}
	echo the next value is ${!new[$i+1]} 
	break;
	else
	echo else part
fi
done
# This program stores variables f1 to f3 in to an array 'new' & call values of the varibles with its place instead of its name. E.g. 1st 2nd etc.,
