date >> creat.txt
for i in {1..80..1}
do
ping 192.168.6.$i -c 1
if [[ $? = 0 ]]
then 
	echo rm -f $i.tx >> creat.txt
else
	echo touch $i.tx >> creat.txt
fi
echo $i done
sleep 2
done
