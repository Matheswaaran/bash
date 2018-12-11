#!/bin/bash
compCall () {
echo ==========================================================================
echo "Comparing $1 [source] with $2 [destination] & storing result @ cmpr2.txt"
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
#if [[ "$it" != " " ]]; then echo $it &&	echo $sr >> cmpr1.txt; fi
if [[ "$it" != " " ]]; then echo $sr >> cmpr1.txt; fi
done < $1
}
declare -i lpp
echo "" > cmpr1.txt
echo "" > cmpr2.txt
#for ((nw=1;nw<=$[$2+2];nw++)); do echo ${!nw}; done #Arithmatic in F'loop!
for ((lp=1;lp<=$2;lp++))
do
	if [[ $lp -ge 2 ]] 
	then
		lpp=lp+2
		compCall cmpr2.txt ${!lpp}
	else
		compCall $1 $3
	fi
sed -i '/^$/d' cmpr1.txt #Removing empty lines
cat cmpr1.txt > cmpr2.txt && echo "" > cmpr1.txt
done
echo ============Final Result============
while read line; do echo "$line found missing!"; done < cmpr2.txt
# This program will compare line between files. It'll compare
# in the order 'one to many'. The input format is...
# ./<scirpt-name.sh> <source.txt> <'n' number of files to be compared>
# <file1.txt> ... <filen.txt>
# E.g. # ./n-li.sh one.txt 2 two.txt three.txt
