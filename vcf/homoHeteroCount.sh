#!/usr/bin/env bash

file=$1

grep "^HWI" $file | awk '{print $10}' | grep -o -E '^[0-9](/|\|)[0-9]' | sed -r 's/(.*):.*/\1/p' | sort | uniq -c > countHH.txt
