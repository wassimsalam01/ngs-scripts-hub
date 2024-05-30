#!/usr/bin/env bash

file=$1
cat $file | grep "^HWI" | awk '{sum+=$5} END { print "Average = ",sum/NR}'
