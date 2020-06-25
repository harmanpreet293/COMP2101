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

USER="$USER"
hostname="$(hostname)"
day=$(date +%A)
timenow=$(date +%I:%M\ %p)

###############
# main  #
###############

echo "$cows It is $day at $timenow."
if [ "$day" = Monday ];then title="happy"
elif [ "$day" = Tuesday ];then title="good"
elif [ "$day" = Wednesday ];then title="lucky"
elif [ "$day" = Thursday ];then title="busy"
elif [ "$day" = Friday ];then title"enjoyful"
elif [ "$day" = Saturday ];then title"Optimistic"
elif [ "$day" = Sunday ];then title"tired"
fi 
echo "Welcome to planet $hostname, "$title $USER!""

