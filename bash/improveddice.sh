#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing
#echo "Rolling..."
# roll the dice and save the results
#die1=$(( RANDOM % 6 + 1))
#die2=$(( RANDOM % 6 + 1 ))
# display the results
#echo "Rolled $die1, $die2"

#Task 1-
#assigning the values to variables
range=6
bias=1
#letting the user know that dices are rolling
echo "Dices are rolling-"
#rolling dice 1 and storing the result in a variable
dice1=$(( RANDOM % range + bias))
#rolling dice 2 and storing the result in a variable
dice2=$((RANDOM % range + bias))
#Printing the outcome of rollings
echo "the outcome of dice 1 and dice 2: $dice1, $dice2"

#Task 2:
#calculating the sum of result of dices roll
sum=$((dice1+dice2)) 
#calculating the average of result of dices roll
average=$((sum/2))
#printing the result of sum and average function
echo "the sum of dices roll is $sum and average of dices roll is $average"
