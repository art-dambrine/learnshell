#!/bin/bash

# Exercise

# In this exercise, you will need to compare three list of arrays and write
#  the common elements of all the three arrays:

# a=(3 5 8 10 6),b=(6 5 4 12),c=(14 7 5 7) result is the common element 5.

#Initializing variables
a=(3 5 8 10 6);b=(6 5 4 12);c=(14 7 5 7)
echo "Table a = "${a[@]}
echo "Table b = "${b[@]}
echo "Table c = "${c[@]}

#Comparaison des array a et b
for x in "${a[@]}"; do
    in=false
    for y in "${b[@]}"; do
        if [ $x = $y ]; then
            # Here is the new table that contain result of comparison
            z[${#z[@]}]=$x
        fi
    done
done

# Resultat intermédiaire
echo "(Comparaison a et b = z) Resultat intermédiaire "${z[@]}

#Comparaison des arrays b et c
for x in "${z[@]}"; do
    in=false
    for y in "${c[@]}"; do
        if [ $x = $y ]; then
            k[${#k[@]}]=$x
        fi
    done
done

# Resultat final
echo "(Comparaison z et c = k) Resultat final "${k[@]}