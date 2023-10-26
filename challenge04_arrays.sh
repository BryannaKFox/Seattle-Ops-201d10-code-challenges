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
directories=("lion" "tiger" "bear" "ohmy")

# Accessing elements in the array
echo "The first saying: ${directory[0]}"
echo "The second saying: ${directory[1]}"
echo "The third saying: ${directory[2]}"
echo "The fourth saying: ${directory[3]}"

# Append a new saying to the array
new_saying="there's no place like home"
directory+=("$new_saying")

# Print the whole array with a single echo
echo "All directories in the array: ${directory[@]}"

# Create a new .txt file in each directory using array indices
file_name="Oz1.txt"
touch "$lion/$file_name"
echo "File '$file_name' created in directory '$lion'."

file_name="Oz2.txt"
touch "$tiger/$file_name"
echo "File '$file_name' created in directory '$tiger'."

file_name="Oz3.txt"
touch "$bear/$file_name"
echo "File '$file_name' created in directory '$bear'."

file_name="Oz4.txt"
touch "$ohmy/$file_name"
echo "File '$file_name' created in directory '$ohmy'."

