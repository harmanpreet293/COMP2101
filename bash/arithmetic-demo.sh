#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#Task 1:
#asking uster to input first number by using read command
read -p "please enter first number: " firstnumber
#asking uster to input second number by using read command
read -p "please enter second number: " secondnumber
#asking uster to input third number by using read command
read -p "please enter third number: " thirdnumber

#Task 2:
#calculating the sum of three numbers
sum=$((firstnumber+secondnumber+thirdnumber))
#multipliyng three numbers
multi=$((firstnumber*secondnumber*thirdnumber))
#printing the sum and product of three numbers
echo "the sum of three numbers is $sum and product of three numbers is $multi"
