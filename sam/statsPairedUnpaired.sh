#!/usr/bin/env bash

file=$1

x=`grep "^(\w+){5}" $file | awk '{print $5}'`
echo "obase=2;$x" | bc > binaryFlags.txt
cat binaryFlags.txt | grep -o '.$' | sort | uniq -c > result.txt
