#!/bin/bash

STRING="this is a string testing it"
SUBSTRING="rs"

# TEST: 4 is the position of the first 'r or s' in $STRING
echo "TEST ' $SUBSTRING ' is located at "$(expr index "$STRING" "$SUBSTRING") 

# Extracting String
POS=5
LEN=6
echo ${STRING:$POS:$LEN}

#If :$LEN is omitted, extract substring from $POS to end of line
echo ${STRING:$POS:$((${#STRING}-$POS))}
echo ${STRING:$POS} # is easier to write

STRING="to be or not to be"
echo ${STRING[@]//not/}        # to be or to be

# Exercise

# In this exercise, you will need to change Warren Buffett's
#  known saying. First create a variable ISAY and assign it
#   the original saying value. Then re-assign it with a new
#    changed value using the string operations and following
#     the 4 defined changes: 

#          - Change1: replace the first occurrence of 'snow' with 'foot'. 

#          - Change2: delete the second occurrence of 'snow'. 

#          - Change3: replace 'finding' with 'getting'.

#          - Change4: delete all characters following 'wet'. 

#        Tip: One way to implement Change4, if to find the index
#         of 'w' in the word 'wet' and then use substring extraction.

echo -e "\n\n\t=========\n\tEXERCICE:\n\t=========\n"

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# write your code here
ISAY=${BUFFETT[@]/snow/foot}
ISAY=${ISAY[@]/snow/}
ISAY=${ISAY[@]/finding/getting}
LOCATE_W=$(expr index "$ISAY" "w")
# echo $LOCATE_W # test
ISAY=${ISAY::$LOCATE_W+2}

# Test code - do not modify
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo $ISAY