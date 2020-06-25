#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

#assigning the correct password to variable correctpassword
correctpassword="password"

#asking the user to guess the password and displaying the number of chances available
echo "Guess the password, you have 5 chances"
#taking input from user
read guesspassword

#testing if the guessed password is right or wrong and displaying result to user
if [ $correctpassword = $guesspassword ];then echo "successfull"
else echo "It is wrong, 4 chances left!" 
#againg taking input from user
read guesspassword
fi

#testing if the guessed password is right or wrong and displaying result to user
if [ $correctpassword = $guesspassword ];then echo "successfull"
else echo "It is wrong, 3 chances left!" 
#againg taking input from user
read guesspassword
fi

#testing if the guessed password is right or wrong and displaying result to user
if [ $correctpassword = $guesspassword ];then echo "successfull"
else echo "It is wrong, 2 chances left!" 
#againg taking input from user
read guesspassword
fi

#testing if the guessed password is right or wrong and displaying result to user
if [ $correctpassword = $guesspassword ];then echo "successfull"
else echo "It is wrong, 1 chances left!" 
#againg taking input from user
read guesspassword
fi

#testing if the guessed password is right or wrong and displaying result to user
if [ $correctpassword = $guesspassword ];then echo "successfull"
#displaying failed message to user and telling that no more chance is available
else echo "failed, no chance left!"
fi



