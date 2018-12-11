#!/bin/sh
# An alternative version of the join command
# This time we check that $# is exactly three. $# is a special
# variable which indicates how many parameters were given to
# the script by the user.
if [ $# -eq 3 ]
then
#  cat $1 $2 > $3
	echo $1 $2 $3
else
  echo "Need exactly three parameters, sorry."
fi

