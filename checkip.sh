#!/bin/bash

s1=$(curl -G https://checkip.amazonaws.com)
s2=$(sed -n 1p currip.txt)
echo get: $s1
echo curr: $s2

if [ "$s1" == "$s2" ]; then
	echo "Result: Same same"
else
	echo "Result: Not same"
	# echo $s1 > currip.txt
fi
