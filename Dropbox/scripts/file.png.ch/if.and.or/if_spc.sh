#!/bin/sh
sp="1 sp"
for i in *
do
#echo $i OK!
#if [[ $i = "1 sp" ]]
then
	echo $i
else
	echo	rm -rf $i
fi
done
