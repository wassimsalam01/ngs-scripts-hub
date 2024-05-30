#!/usr/bin/env bash

file=$1
grep "^chr" $file | awk '{print $8}' | grep -o -E '^DP=[0-9]+' | sed 's/^DP=//' | awk '{sum+=length} END { print "Average SNP depth= ",sum/NR}'
