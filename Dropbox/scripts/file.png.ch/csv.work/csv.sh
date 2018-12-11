#!/bin/bash
while IFS="," read f1 f2 f3
do
	echo "System No		:$f1"
	echo "Mount issue?	:$f2"
	echo "Copy issue?	:$f3"
done < log.csv
while IFS="," read f1 f2 f3
do
	if [ $f1 = 2 ]
	then 
		$f2 = "yes"
	fi
done < log.csv
while IFS="," read f1 f2 f3
do
	echo "System No		:$f1"
	echo "Mount issue?	:$f2"
	echo "Copy issue?	:$f3"
done < log.csv
