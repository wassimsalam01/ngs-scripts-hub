#!/usr/bin/env bash

file=$1

M=`grep "^HWI" $file | awk '{print $6}' | grep -o -E '[0-9]+M' | sed 's/M$//' | paste -sd+ | bc`
I=`grep "^HWI" $file | awk '{print $6}' | grep -o -E '[0-9]+I' | sed 's/I$//' | paste -sd+ | bc`
D=`grep "^HWI" $file | awk '{print $6}' | grep -o -E '[0-9]+D' | sed 's/D$//' | paste -sd+ | bc`

echo "Matches: $M"
echo "Insertions: $I"
echo "Deletions: $D"



