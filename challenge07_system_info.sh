#!/bin/bash

# Script Name:                  System Information 
# Author:                       Bryanna Fox
# Date of latest revision:      10/31/2023
# Purpose:                      Notifying user of the system information. 

#find and display the name of the computer

sudo lshw -short | grep -E "system"

#find and display the CPU information 

sudo lshw -short | grep -E "cpu" 

#find and display the RAM information 

sudo lshw -short | grep -E "memory" 

#Find and display the Display adapter information

sudo lshw -short | grep -E "display" 

#find and display the Network adapter information

sudo lshw -short | grep -E "network" 

#use "grep" to remove irrelevant information 