#!/bin/bash
declare -i n=0
read n
echo $n
echo The width of the number is ${#n}
# To remove all white spaces b=$(echo $a | sed 's/\ //')
