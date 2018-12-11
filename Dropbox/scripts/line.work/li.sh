#!/bin/bash
compCall () {
while read line
do
	sr=$line
	it=" "
	while read line
		do
		dt=$line
		if [[ "$sr" == "$dt" ]]
		then
			it=" "
			break;	
		else
			it="No match found for \"$sr\" in \"$2\""
		fi
		done < $2
	if [[ "$st" != " " ]]; then echo $it; fi
done < $1
}
echo ===============comparing $1 with $2====================
echo " "
compCall $1 $2
echo " "
echo ===============comparing $2 with $1====================
echo " "
compCall $2 $1
echo " "
