#!/bin/bash
mkdir base
while read ln
do
echo copying $ln
cp $1 base/"$ln.txt"
done < $2
