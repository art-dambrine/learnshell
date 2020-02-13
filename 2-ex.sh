#!/bin/bash
# Course exemples:
# MyFirstLetters=ABC
# echo "The first 10 letters in the alphabet are: ${MyFirstLetters}DEFGHIJ"

# greeting='Hello        world!'
# echo $greeting" now with spaces: $greeting"
# start="Test       space"
# echo "$start"

# FILELIST=`ls`
# FileWithTimeStamp=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt

# echo $FILELIST
# echo $FileWithTimeStamp

# Exercise
# The target of this exercise is to create a string, 
# an integer, and a complex variable using command substitution. 
# The string should be named BIRTHDATE and should contain the text "Jan 1, 2000".
# The integer should be named Presents and should contain the number 10.
# The complex variable should be named BIRTHDAY
#   and should contain the full weekday name of the day matching
#   the date in variable BIRTHDATE e.g. Saturday. Note that the
#   'date' command can be used to convert a date format into a
#   different date format. For example, to convert date value,
#   $date1, to day of the week of date1, use:

# Change this code
BIRTHDATE="Jan 1, 2000"
Presents=10
BIRTHDAY=`date -d "$BIRTHDATE" +%A`
# echo `date -d "$BIRTHDATE" +%A`


# Testing code - do not change it

if [ "$BIRTHDATE" == "Jan 1, 2000" ] ; then
    echo "BIRTHDATE is correct, it is $BIRTHDATE"
else
    echo "BIRTHDATE is incorrect - please retry"
fi
if [ $Presents == 10 ] ; then
    echo "I have received $Presents presents"
else
    echo "Presents is incorrect - please retry"
fi
if [ "$BIRTHDAY" == "Saturday" ] ; then
    echo "I was born on a $BIRTHDAY"
else
    echo "BIRTHDAY is incorrect - please retry"
fi





