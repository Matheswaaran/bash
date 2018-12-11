#!/bin/bash
declare -i n=0 
declare -a a
while IFS="," read f{1..15} 
do 
n=$(($n+1))
a[$n]=$f7
echo "a[$n]=$f7"
done < $1
for ((i=1;i<=$n;i++)) 
do
echo for loop printing ${a[$i]}
echo \$i=$i
done
echo array width= ${#a[*]}
for i in "${a[*]}"
do
echo for loop array printing $i
done
echo ${a[*]}
