#!/bin/bash
while IFS="," read f{1..5}
do
echo $f1
done < $1

# sed -ri 's/7/seven/1' samp.csv "This will change '7' to 'seven' on the first occurence. Not the firt line"
