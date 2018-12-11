#!/bin/bash
cat dupe.mac.dat|while read ln
do
if [[ ${#ln} -ge 13  ]] && [[ $(echo $ln|while IFS="=" read o t;do echo $t;done) = "" ]]
then
	echo $ln|while IFS="[.|:]" read f{1..9}
	do
	echo line = $ln value = $f4	
	sed -i "s/[.]$f4[:]/.$(echo $f4|cut -c1-2)=0$(echo $f4|cut -c3):/g" dupe.mac.dat
	done
else
	:
fi
done
#3rd octect of few ips were mingled with mac id. this script were used to seperate them.
#e.g. input value could something like 380. the corrected replacement will be 38=00 etc.,
