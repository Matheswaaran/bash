declare -i im
declare -i ai=2
#for i in {1..2..1}
for ((i=1;i<=$1;i++))
do
im=i+1
#echo $im
#echo "${!(im+1)}" # IMPORTANT: Variable with in a variable!
if [ $i -le 1 ]
then
	echo "$i is less than or equal to 1" # IMPORTANT: Variable with in a variable!
	cat ${!im}
	echo word count is $(wc < ${!im})
	echo
else
	echo "$i is greater than or equal to 2"
	cat ${!im}
	echo word count is $(wc < ${!im})
	echo
fi
#echo $(($i))
#echo $1 $2 $3
done
