#!/bin/bash
cat my.csv |while IFS=":" read gf{1..5};do if [[ "$a" != "$gf2" ]];then a=$gf2 && echo $gf2;else :;fi;done|while read ln;do echo DISTRICT ============== "$ln" && cat my.csv |grep \:"$ln"\:|while IFS=":" read f{1..5};do if [[ "$ai" != "$f3" ]];then ai=$f3 && echo $f3 $(cat my.csv|grep "$ln:$f3:"|wc -l);else :;fi ;done;done
# sample commands: 
# ./srh.sh |egrep "DISTRICT|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19"
