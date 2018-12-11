limit=150
echo " " > k.txt
for((a=1;a<=limit;a++));
do
pd=$RANDOM
echo exam$a -- $pd >> k.txt
echo "----------------" >> k.txt
echo $pd | passwd  --stdin  exam$a 
# passwd -d exam$a 
done
