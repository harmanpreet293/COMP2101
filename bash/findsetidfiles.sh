#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise
# it uses the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files are sorted by their owner

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
# The second listing should display after the setuid file list, and be formatted similar to the
# setuid file list including having a title
# use the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files should be sorted by their group

# Task 2 for the exercise is to modify it to also display the 10 largest regular files in the system, sorted by their sizes
# The listing should only have the file name, owner, and size in MBytes and be displayed after the listings of
# setuid and setgid files and should have its own title
# use the find command to generate the list of files with their sizes, with an error redirect to /dev/null
# use cut or awk to display only the output desired

echo "Setuid files:"
echo "============="
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
echo ""

#title for setgid files
echo "Setgid files:"
#under lining the title
echo "============="
#displaying the setgid files using find command and redirecting error to /dev/null
find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -K 5 #sorting file's list on bais of their group
echo "" #giving space between two tasks

#title for the list of 10 largest regular files
echo "The 10 largest regular files in the system:"
#underlining the title
echo "============="
#displaying the 10 largest regular files and sorting them by their size
find / -type f -executable -ls -l 2>/dev/null | du -ah | sort -hr | head -n 10

