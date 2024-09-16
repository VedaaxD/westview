# #using a function in script
# functions have to be defined before it is invoked or used
# function func1 {
# 	echo "This is an example of a function"
# } 
# count=1
# while [ $count -le 2 ]
# do
# 	func1
# 	count=$[ $count +1 ]
# done
# echo "This is the end of the loop"
# func1
# echo "Now this is the end of the script"
# #
#using a function loacted in the middle of the script
# #count=1
# echo "This line comes befpre the function definition"
# function func2 {
# 	echo "This is an example of a function"
# }
# while [ $count -le 2 ]
# do
# 	func2
# 	count=$[ $count +1 ]
# done
# echo "This is the end of the loop"
# func2
# echo "Now this is the end of the script"
# #
# #Testing the exit status of a function
# func1() {
# 	echo "trying to display a non-existent file"
# 	ls -l badfile
# }
# echo "Testing the function:"
# func1
# echo "The exit status is : $?"
##
# #using the return command in a function
# function dbl {
# 	read -p "Enter a value:" value
# 	echo "Doubling the value"
# 	return $[ $value * 2 ]
# }
# dbl
# echo "The new value is $?"
# #


# #using the echo to return a value
# function dbl {
# 	read -p "Enter a value:" value
# 	echo $[ $value *2 ]
# }
# result=$(dbl)
# echo "The new value is  $result"
#
# #passing parameters to a function
# function addem {
# if [ $# -eq 0 ] || [ $# -gt 2 ]
# then
# 	echo -1
# elif [ $# -eq 1 ]
# 	then
# 		echo $[ $1 + $1 ]
# 	else
# 		echo $[ $1 + $2 ]
# 	fi
# }
# echo -n "Adding 10 and 15:"
# value=$(addem 10 15)
# echo $value

# echo -n "Let's try adding just one number:"
# value=$(addem 10)
# echo $value

# echo -n "Now try adding no numbers:"
# value=$(addem)
# echo $value

# echo -n "Finally try adding three numbers:"
# value=$(addem 10 15 20)
# echo $value
#
# #trying to access script parameters inside a function
# #./sep12.sh 10 15
# function func7 {
# 	echo $[ $1 * $2 ]
# }
# if [ $# -eq 2 ]
# then
# 	value=$(func7 $1 $2)
# 	echo "The result is $value"
# else
# 	echo "Usage: badtest1 a b"
# fi
# #
# #demonstrating bad use of variables
# function func1 {
# 	temp=$[ $value + 5 ]
# 	result=$[ $temp * 2 ]
# }
# temp=4
# value=6
# func1
# echo "The result is $result"
# if [ $temp -gt $value ]
# then
# 	echo "temp is larger"
# else
# 	echo "temp is smaller"
# fi
#
# #demostrating the local keyword
# function func1 {
# 	local temp=$[ $value + 5 ]
# 	result=$[ $temp * 2 ]
# }
# temp=4
# value=6
# func1
# echo "The result is $result"
# if [ $temp -gt $value ]
# then
# 	echo "temp is larger"
# else
# 	echo "temp is smaller"
# fi
# echo "$temp"
# #
