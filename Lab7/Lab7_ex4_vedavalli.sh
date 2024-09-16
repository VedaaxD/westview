#!/bin/bash
read -p "Enter a number:" number
i=1
while [ $i -le 12 ]
do
	result=$(( $number * $i ))
		echo "$number * $i = $result"
	i=$(( i + 1 ))
done
