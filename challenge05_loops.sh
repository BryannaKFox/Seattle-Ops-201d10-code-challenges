#!/bin/bash

# Script:                     ops201d10-challenge05-loops  
# Author:                     Bryanna Fox  
# Date of latest revision:    10/26/2023  
# Purpose:                    Write a script using a loop  

# Basic for loop
#!/bin/bash

 while true; do
    # Display running processes
    echo "Running processes:"
    ps aux

    # Ask the user for a PID
    read -p "Enter the PID of the process to kill (Ctrl+C to exit): " pid

    
        # Kill the process with the given PID
        if kill -9 "$pid"; then
            echo "Process with PID $pid killed successfully."
        else
            echo "Failed to kill process with PID $pid."
        fi
    
done