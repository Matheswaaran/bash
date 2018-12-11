#!/bin/bash
if [[ $1 == "" ]] || [[ $2 == "" ]]
then
echo This script is used to compare file that have been created by following command to check the variation
echo araised in file/folder size or arrival of new file/folders in a given folder
echo command = "du -s *|awk '{print \$2\"|\"\$1}' > file<date><Mnth>16.txt"
echo Error Reading input!
echo Usage\: $0 \<Old file\> \<Recent file\>
echo Eg. $0 file12Apr16.txt file30Mar16.txt 
else
while IFS="|" read f1 f2
do
while IFS="|" read o1 o2
do
if [[ $f1 == $o1 ]]
then fnd=1 && break;
else fnd=0
fi
done < $2
if [[ $fnd == 0  ]]
then echo file \"$f1\" is missing/deleted...
else :
fi
done < $1

while IFS="|" read f1 f2
do
while IFS="|" read o1 o2
do
if [[ $f1 == $o1 ]]
then fnd=1 && break;
else fnd=0
fi
done < $1
if [[ $fnd == 0  ]]
then echo file \"$f1\" is new arrival...
else :
fi
done < $2
fi
#file30Mar16.txt
#file30Mar16.txt
