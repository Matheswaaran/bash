#!/bin/sh
sp="a.txt"
for i in *
do
#echo $i OK!
if [[ $i = $sp ]] || [[ $i = b.txt ]] || [[ $i = "1 sp" ]] || [[ $i = 2 ]] || [[ $i = *.m ]] || [[ $i = net* ]]
then
	echo $i
else
	echo rm -rf $i
fi
done
