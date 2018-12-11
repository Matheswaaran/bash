#!/bin/bash
calCall () {
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
else
	echo Your input doesnt match with records. Plz try again...
	calCall
fi
}
calCall
echo Thanx...
echo End of script
sleep 1
