#!/usr/bin/env bash

file=$1
depth=$2

grep "^chr" $file | awk '{print $8}' | sed -r 's/^DP=([0-9]+).*/\1/' > cutDepths.txt
all_lines=`cat cutDepths.txt`

awk '$1 > $depth' cutDepths.txt > afterThreshold.txt
grep "^chr" $file | awk '{print $1"_"$2}' > IDs.txt
sed "s/$/_${all_lines}/" IDs.txt

