#!/usr/bin/env bash

desc1="Read is paired"
desc2="Both reads in a pair mapped properly"
desc4="Read itself unmapped"
desc8="Mate read unmapped"
desc16="Read mapped to reverse strand"
desc32="Mate read mapped to reverse strand"
desc64="Read is first read in a pair"
desc128="Read is second read in a pair"
desc256="Alignment is not primary"
desc512="Read fails platform quality checks"
desc1024="Read is a PCR or optical duplicate"

declare -a myarray
myarray=("$desc1" "$desc2" "$desc4" "$desc8" "$desc16" "$desc32" "$desc64" "$desc128" "$desc256" "$desc512" "$desc1024")

numberToConvert=$1
x=`echo "obase=2;$numberToConvert" | bc | rev`
for i in $(seq 1 ${#x})
do
	if [ ${x:i-1:1} -eq 1 ]
	then
		echo "${myarray[$i-1]}"
	fi
done
