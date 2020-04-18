#!/bin/bash
# enter your function code here

function ENGLISH_CALC {


if [ "$2" = "plus" ]; then

  
  echo "$1 + $3 = "$(($1+$3));

fi

if [ "$2" = "minus" ]; then

  
  echo "$1 - $3 = "$(($1-$3));

fi

if [ "$2" = "times" ]; then

  
  echo "$1 * $3 = "$(($1*$3));

fi


}



# testing code
ENGLISH_CALC 3 plus 5
ENGLISH_CALC 5 minus 1
ENGLISH_CALC 4 times 6
