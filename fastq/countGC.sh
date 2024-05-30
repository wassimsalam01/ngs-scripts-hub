#!/usr/bin/env bash

file=$1

pC=`tr -cd 'C' < $1 | wc -c`
pT=`tr -cd 'T' < $1 | wc -c`
pG=`tr -cd 'G' < $1 | wc -c`
pA=`tr -cd 'A' < $1 | wc -c`

GC=$(($pC+$pG))
sum=$(($pC+$pG+$pT+$pA))
content=$(echo "scale=3; $GC/$sum" | bc)
echo "content = $content"
