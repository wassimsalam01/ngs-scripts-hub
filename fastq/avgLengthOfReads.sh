#!/usr/bin/env bash

file=$1
sed -n '2~4p' $1 | awk '{sum+=length} END { print "Average = ",sum/NR}'
