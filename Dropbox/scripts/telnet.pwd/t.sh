#!/bin/bash
echo "Type in a text" 
declare -c a
read a 
echo :
echo :
echo $a  
a=$(echo $a | sed 's/\ //g')
echo $a  
a=$(echo $a | tr '[:lower:]' '[:upper:]')
echo $a
#a=$(echo $a | tr '[:alnum:]' '[:=CHAR=:]')
#echo $a
a=$(echo $a | sed 's/[A-Z]//g')
