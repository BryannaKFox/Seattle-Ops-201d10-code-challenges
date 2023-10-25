#!/bin/bash

# Script:                       ops201d10-challenge03-shell-functions
# Author:                       Bryanna Fox
# Date of latest revision:      10/24/2023
# Purpose:                      Write a function that prints the login history of users on the computer.

# Declaration of functions

# Basic function
print_something () {
    last
  echo "This is the login history"
}

# Main

for ((i=0; i<3; i++)); do
    print_login_history "This is the login history"
    done

# End