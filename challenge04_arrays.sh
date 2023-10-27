#!/bin/bash

# Script:                       ops201d10-challenge04-arrays
# Author:                       Bryanna Fox
# Date of latest revision:      10/25/2023
# Purpose:                      Write a script that creates 4 directories, put the names of the directories in an array, References the array variable to create a new .txt file in each directory 

# Create four directories
mkdir -p lion
mkdir -p tiger
mkdir -p bear
mkdir -p ohmy

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
touch Oz0.text 
mv Oz0.text /home/bryanna/.vscode-server/extensions/Seattle-Ops-201d10-code-challenges/lion
echo "File '$Oz0.txt' created in directory '$lion'."

touch Oz1.text 
mv Oz1.text /home/bryanna/.vscode-server/extensions/Seattle-Ops-201d10-code-challenges/tiger
echo "File '$Oz1.txt' created in directory '$tiger'."

touch Oz2.text 
mv Oz2.text /home/bryanna/.vscode-server/extensions/Seattle-Ops-201d10-code-challenges/bear
echo "File '$Oz2.txt' created in directory '$bear'."

touch Oz3.text 
mv Oz3.text /home/bryanna/.vscode-server/extensions/Seattle-Ops-201d10-code-challenges/ohmy
echo "File '$Oz3.txt' created in directory '$ohmy'."

