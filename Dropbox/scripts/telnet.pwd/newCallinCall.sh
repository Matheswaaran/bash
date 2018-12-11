#!/bin/bash
clincl () {
while :
do
echo Type '1' or '2'
read a
if [[ $a = '1' || $a = '2' ]]
then
	if [ $a = '1' ]
	then
	echo You have typed \'1\'
	else
	echo You have typed \'2\'
	fi
	break
else
	echo Your input doesnt match with records. Plz try again...
fi
done
}
clincl
echo Thanx...
echo End of script
sleep 1
