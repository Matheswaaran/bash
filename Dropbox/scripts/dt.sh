#!/bin/bash
a=(f{1..10})
for i in {0..5}
do 
if [[ $(echo "Date : 12.4.13"|while IFS="[ |:|.]" read f{1..6};do echo ${!a[i]};done|tr '[:lower:]' '[:upper:]') = "DATE" ]]
then
	mn=$(($i+2))
	echo the month is ${!a[mn]}
else
	:
fi
done
