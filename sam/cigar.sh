#!/usr/bin/env bash

file=$1

grep "^HWI" $file | awk '{print $6}' > ./cigar.txt
grep -o -E '[0-9]+M' ./cigar.txt > ./matches.txt

sed 's/M$//' ./matches.txt > ./matchNumbers.txt

sum=`paste -sd+ ./matchNumbers.txt | bc`
lines=`wc -l ./cigar.txt`

echo $(($sum/$lines))
