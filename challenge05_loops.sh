#!/bin/bash

# Script:                     ops201d10-challenge05-loops  
# Author:                     Bryanna Fox  
# Date of latest revision:    10/26/2023  
# Purpose:                    Write a script using a loop  

# Basic for loop
#!/bin/bash

 #Basic for loop
 names="Billy Bob Joe"
 for name in $names
 do
 echo $name
 done



    # Display running processes
    echo "Running processes:"
    ps 

    # Ask the user for a PID
    read -p "Enter the PID of the process to kill (Ctrl+C to exit): " pid

    # Check if the PID is valid
    if [[ "$pid" =~ ^[0-9]+$ ]]; then
        # Kill the process with the given PID
        kill -9 "$pid"
        echo "Process with PID $pid killed."
    else
        echo "Invalid PID. Please enter a valid numeric PID."
    fi
done



# End
