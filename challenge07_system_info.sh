#!/bin/bash

# Script Name:                  System Information 
# Author:                       Bryanna Fox
# Date of latest revision:      10/31/2023
# Purpose:                      Notifying user of the system information. 

#find and display the name of the computer

echo "The Name of the Computer"
sudo lshw -short | grep -E "system"

#find and display the CPU information 

echo "The CPU information including: Product, Vendor, Physical ID, Bus Info, and Width"
sudo lshw -C cpu | grep -E "Product:|vendor:|physical ID:|bus info:|width:" 

#find and display the RAM information 

ecoh "The RAM information including: Description, Physical ID, and Size"
sudo lshw -short | grep -E "memory" 

#Find and display the Display adapter information

echo "The Display Adapter information including: Description, Product, Vendor, Physical ID, Bus info, Widthm Clock, Capabilities, Configuration, and Resources"
sudo lshw -short | grep -E "display|graphics|adapter|product:|vendor:|physical id:|bus info:|width:|clock:|capabilities:|configuration:|resources:" 

#find and display the Network adapter information

echo "The Network Adapter information including: Description, Product, Vendor, Physical ID, Bus info, Logical name, Version, Serial, Aize, Capacity, Width, Clock, Capabilities, Configuration, and Recources"
sudo lshw -short | grep -E "network|ethernet|description:|product:|vendor:|physical id:|bus info:|logical name:|version:|serial:|size:|capacity:|width:|clock:|capabilities:|configuration:|resources:" 

#use "grep" to remove irrelevant information 