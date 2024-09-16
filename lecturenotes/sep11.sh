# #testing two command line paramters
# total=$[ $1 * $2 ]
# echo "The first paramter is $0"
# echo "The first parameter is $1"
# echo "The second parameter is $2"
# echo "The total value is $total."


# #using one command line parameter
# factorial=1
# for (( number=1; number <= $1 ; number ++))
# do
# 	factorial=$[ $factorial * $number ]
# done
# echo "The factorial of $1 is $factorial"

#Testing parameters
# if [ $# -ne 2 ]
# then
# 	echo Usage: bdbh101_shell_userinput.sh a b
# else
# 	total=$[ $1 + $2 ]
# 	echo The total is $total
# fi


# #Demonstrate diff btw $* and $@ 
# #testing $* and $@
# echo
# count=1
# for parameter in "$*"
# do
# 	echo "\$* Parameter #$count = $parameter"
# 	count=$[ $count +1 ]
# done
# #
# echo
# count=1
# for parameter in "$@"
# do
# 	echo "\$@ Parameter #$count = $parameter"
# 	count=$[ $count +1 ]
# done

# #being shifty
# #demonstrating shift command
# echo
# count=1
# while [ -n "$1" ]
# do
# 	echo "Paramter #$count =$1"
# 	count=$[ $count + 1 ]
# 	shift
# done


#extracting command line options as parameters
#
# while [ -n "$1" ]
# do
# 	case "$1" in
# 		-a) echo "Found the -a option" ;;
# 		-b) echo "Found the -b option" ;;
# 		-c) echo "Found the -c option" ;;
# 		 *) echo "$1 is not an option" ;;
# esac 
# shift
# done

# while [ -n "$1" ]
# do
# 	case "$1" in
# 		-a) echo "Found the -a option"; echo "The value of -a is $2" ;;
# 		-b) echo "Found the -b option"; echo "The value is -b is $2" ;;
# 		-c) echo "Found the -c option"; echo "The value is -c is $2" ;;
# 		 *) echo "$1 is not an option"; echo "Invalid";;
# esac 
# shift
# done

# #Testing the REPLY Environment variable
# read -p "Enter your name:"
# echo
# echo Hello $REPLY, welcome to my program.

# # read command
# read -p "Enter your name:" first last
# echo "Checking data for $last, $first..."

# #timing the data entry
# if read -t 5 -p "Please enter your name:" name
# then
# 	echo "Hello,$name welcome to my script"
# else
# 	echo "Are you a tortoise?, LOL"
# fi

# #timing yet again
# if read -t 13 -p "Please enter your name:" name
# then
# 	echo "Hello,$name welcome to my script"
# else
# 	echo "Are you a tortoise?, LOL"
# fi