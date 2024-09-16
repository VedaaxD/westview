#!/bin/bash
sum=$(( $1+$2 ))
echo "Sum of $1 and $2 is $sum"
product=$(( $1*$2 )) 
echo "The product of $1 and $2 is: $product"
quotient=$(( $1/$2 )) 
echo "The quotient of $1 and $2 is: $quotient"
remainder=$(( $1%$2 )) 
echo "The remainder of $1 and $2 is: $remainder" 
