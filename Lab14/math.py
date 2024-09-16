number1=int(input("Enter the first number:"))
number2=int(input("Enter the second number:"))
operation=input("Enter the operator:")
addition=int(number1+number2)
subtraction=int(number1-number2)
multiplication=int(number1*number2)
division=int(number1/number2)
remainder=int(number1%number2)
exponent=int(number1**number2)
if operation == '+' :
	print ("The sum of the numbers are",addition )
else:
	if operation == '-' :
		print ("The difference of the numbers are", subtraction )
	else:
		if operation == '*' :
		    print ("The product of the numbers are", multiplication )
		else:	
			if operation == '/' :
				print ("The quotient of the numbers are", division )
			else:
		  		if operation == '%' :
		  			print ("The remainder of the numbers are", remainder ) 
		  		else:
		  			if operation == '**' :
		  				print ("The power of", number2 ,"to" ,number1, "is", exponent )
		  			else:
		  				print ( "Error, enter a valid operation" )