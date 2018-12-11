#!/bin/bash
declare -i reg
regRead () {
reg=""
read reg
echo your input is $reg
if [[ ${#reg} = '12' ]] && [[ $reg != '0' ]] 
then echo good value
else
clear
echo ========================W R O N G !============================
echo "Your input might contain chars other than numerals (or) less than 12 digits. Please type again..."
regRead
fi
}
echo Please enter your reg no.
regRead
if [[ $reg = "" ]] 
then 
clear
echo ========================W R O N G !============================
echo "Your input might contain chars other than numerals (or) less than 12 digits. Please type again..."
regRead
else
:
fi
echo Outfn: Your reg no is $reg
