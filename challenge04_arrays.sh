#!/bin/bash

# Script:                       ops201d10-challenge04-arrays
# Author:                       Bryanna Fox
# Date of latest revision:      10/25/2023
# Purpose:                      Write a script that creates 4 directories, put the names of the directories in an array, References the array variable to create a new .txt file in each directory 

# Create four directories
mkdir "lion"
mkdir "tiger"
mkdir "bear"
mkdir "ohmy"

# Declare an array
saying=("lion" "tiger" "bear" "ohmy")

# Accessing elements in the array
echo "The first saying: ${saying[0]}"
echo "The second saying: ${saying[1]}"
echo "The third saying: ${saying[2]}"
echo "The fourth saying: ${saying[3]}"

# Append a new saying to the array
new_saying="there's no place like home"
saying+=($new_saying)

# Print the whole array with a single echo
echo "All directories in the array:${saying[@]}"

# Create a new .txt file in each directory using array indices

touch /lion/Oz0.txt
echo "File '$Oz0.txt' created in directory '$lion'."


touch /tiger/Oz1.txt
echo "File '$Oz1.txt' created in directory '$tiger'."


touch /bear/Oz2.txt
echo "File '$Oz2.txt' created in directory '$bear'."


touch /ohmy/Oz3.txt
echo "File '$Oz3.txt' created in directory '$ohmy'."

