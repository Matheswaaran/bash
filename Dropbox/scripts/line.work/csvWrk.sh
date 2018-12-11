#!/bin/bash
echo Name,Roll No.,Reg.No.,Email ID > Consol
for i in *.csv
do
declare i n=0
while IFS="," read f{1..5}
do
n=$((n+1))
if [ $n = 3  ]
then
	echo $f1,$f2,$f3,$f4 >> Consol
#	echo "Serial No	=$f2"
#	echo "Reg.No	=$f3"
#	echo "Email ID	=$f4"
else
	:
fi
#echo $f{1..5}
done < $i
done
mv Consol Consol.csv
# Reference csv file format is
# Please type in your name Roll No. & Email ID in the required fields,,,
# Name,Roll No.,Reg No.,Email ID
# kamal,23,99686813438,a@abc.com

