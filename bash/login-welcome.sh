#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# variables # 
###############

#assigning the value of username to variable USER
USER="$USER"
#generating the value of hostname
hostname="$(hostname)"
#assigning the today's day name to variable day
day=$(date +%A)
#passing the current time to variable timenow
timenow=$(date +%I:%M\ %p)

###############
# main  #
###############

#printing the today's day and current time
cows="$It is $day at $timenow."

#using if else statement to give title to each day
if [ "$day" = Monday ];then title="happy"
elif [ "$day" = Tuesday ];then title="good"
elif [ "$day" = Wednesday ];then title="lucky"
elif [ "$day" = Thursday ];then title="busy"
elif [ "$day" = Friday ];then title"enjoyful"
elif [ "$day" = Saturday ];then title"Optimistic"
elif [ "$day" = Sunday ];then title"tired"
fi 
#displaying the line containing variable
cows="Welcome to planet $hostname, $title $USER!"

