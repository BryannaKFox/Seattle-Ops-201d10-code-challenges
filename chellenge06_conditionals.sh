#!/bin/bash

# Script Name:                  Bash Conditionals 
# Author:                       Bryanna Fox
# Date of latest revision:      10/30/2023
# Purpose:                      Munchkins in Oz

# Array to store the grocery list
lands=("lion" "tiger" "bear" "ohmy")

# Function to check if munchkins are in the lands of OZ
munchkin_in_land() {
  search_munchkin="$1" # item I am looking for in my list
  for munchkin in "${lands[@]}"; do
    # check if the munchkin I am searching for is in the array or not
    if [ "$munchkin" == "$search_munchkin"]; then
      return 0 # true - munchkin was found!
    fi
  done
  return 1 # false - munchkin was not found
}

# Loop to repeatedly ask the user for munchkins to check
while true; do
  # ask the user for input of a munchkins name to look for in the lands
  read -p "Enter a munchkins name to check if they are in the lands.(or type 'done' to finish)" munchkin_to_check
    # munchkin_to_check is a variable that will store the user's input

  # check if the user's input is "done"
  if [ "$munchkin_to_check" = "done" ]; then
    break # exit the loop
  fi

  # check if the munchkin is in the land using the function
  if munchkin_in_land "$munchkin_to_check"; then
    echo "Munchkin '$munchkin_to_check' is already in the Land of Oz."
  else
    # if the munchkin is not in the land, ask the user if they want to add it
    read -p "'$item_to_check' is not on your list, do you want to add it? (yes/no)" add_item
    if [ "$add_item" = "yes" ]; then
      lands+=("$munchkin_to_check")
      echo "'$munchkin_to_check' added to the Land of Oz."
    else
      echo "'$munchkin_to_check' is not added to the Land of Oz."
    fi
  fi
done

# Ask the user if they are ready to see the completed Land of Oz
read -p "Are you ready to see the completed Land of Oz? (yes/no)" show_land
if [ "$show_land" = "yes" ]; then
  echo "The completed Land of Oz: "
  echo "${lands[@]}"
else
  echo "Ok, you can check the lands later."
fi


# End