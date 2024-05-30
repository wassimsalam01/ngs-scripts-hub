#!/usr/bin/env bash

file=${1?Error: no file given}

cmd1=`grep "^@.*" $file | wc -l`
cmd2=`grep "^@.*AGATCGCA+TCCGGAGA$" $file | wc -l`

echo $cmd1
echo $cmd2

if [ $cmd1  -gt $cmd2 ]
then
	echo "More than one adapter detected, $cmd1, $cmd2"
else
	echo "Equal"
fi
