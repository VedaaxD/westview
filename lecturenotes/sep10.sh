#cstyle
var1=10
while [ $var1 -gt 0 ]
do
	echo $var1
	var1=$[ $var1 - 1 ]
done
#
#testing
#!/bin/bash
testing=`date`
echo "The date today is $testing"

#multiple variables
for (( a=1 , b=10 ; a <= 10 ; a++ , b-- ))
do 
	echo "$a -$b"
done

#continue
for (( var1=1 ; var1 < 15; var1 ++ ))
do
	if [[ $var -gt 5 ]] && [[ $var1 -lt 10 ]]
	then
		continue
	fi
	echo "Iteration number: $var1"
done

#break
for var1 in 1 2 3 4 5 6 7 8 9 10
do
	if [ $var1 -eq 5 ]
	then 
		break
	fi
	echo "Iteration  number: $var1"
done
echo "The for loop is completed"

#until
var1=100
until [ $var1 -eq 0 ]
do
	echo $var1
	var1=$[ $var1 - 25 ]
done

#
for (( a=1; a<4 ; a++ ))
do
	echo "Outer loop: $a"
	for (( b=1; b<100 ; b++ ))
	do
		if [ $b -gt 4 ]
		then
			break 1
		fi
		echo "Inner loop: $b"
	done
done
#nestedloops
for (( a=1 ; a<=3; a++ ))
do 
	echo "Starting loop $a:"
	for (( b=1 ; b<=3 ; b++ ))
	do
		echo "Inside loop: $b"
	done
done
#
#while
var1=10
while [ $var1 -gt 0 ]
do
	echo $var1
	var1=$[ $var1 - 1 ]
done