# Script:                       ops201d10-challenge13_domain_analyzer
# Author:                       Bryanna Fox
# Date of latest revision:      11/8/2023
# Purpose:                      Retrieve and analyze domain information


#!/bin/bash

# Install whois 
sudo apt install whois

# Ask for domain-related questions and save results to domain_info.txt
perform_domain_queries() {
    read -p "Enter a domain name: " domain_name
    echo "Running whois for $domain_name..."
    whois $domain_name >> domain_info.txt
    echo "Running dig for $domain_name..."
    dig $domain_name >> domain_info.txt
    echo "Running host for $domain_name..."
    host $domain_name >> domain_info.txt
    echo "Running nslookup for $domain_name..."
    nslookup $domain_name >> domain_info.txt
    echo "Results saved to domain_info.txt"
    cat domain_info.txt
}

# Main menu
echo "Choose an option:"
echo "1. Option 1"
echo "2. Option 2"
echo "3. Option 3"
echo "4. Option 4"
echo "5. Option 5"
echo "6. Perform domain queries and save results to a file"

read choice

case $choice in
    1)
        # Add your logic for Option 1
        echo "You chose Option 1"
        ;;
    2)
        # Add your logic for Option 2
        echo "You chose Option 2"
        ;;
    3)
        # Add your logic for Option 3
        echo "You chose Option 3"
        ;;
    4)
        # Add your logic for Option 4
        echo "You chose Option 4"
        ;;
    5)
        # Add your logic for Option 5
        echo "You chose Option 5"
        ;;
    6)
        # Call the function for the new option
        perform_domain_queries
        ;;
    *)
        echo "Invalid option"
        ;;
esac
