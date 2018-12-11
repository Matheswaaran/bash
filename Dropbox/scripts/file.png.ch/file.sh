i=10
j=/home/kannan/
if [ -f $j$i".txt" ]
then
	echo $j$i.txt exists
else
	echo File @ $i$j.txt NOT exists
fi
