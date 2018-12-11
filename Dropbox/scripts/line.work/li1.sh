#!/bin/bash
declare -i a=0
while read line
	do
	sr=$line

		while read line 
		do
		dt=$line
		if [[ "$sr" == "$dt" ]]
		then
		a=$a+1              	
			break;		
		fi
		done < two.txt
          
	if [[ $a -ge 1 ]]
	then
        	echo "Match  found for $sr"
        else
        	echo "$sr  not found"
        fi
a=0
done < one.txt

