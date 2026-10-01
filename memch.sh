#!/bin/bash

echo "information about memory usage"
echo "#########################################################################" 
echo
echo "Total memory: $(free -h | grep Mem | awk '{print $2}')"
echo "########################################################################"
echo
echo "Used memory: $(free -h | grep Mem | awk '{print $3}')"
echo "#########################################################################"
echo
echo "Free memory: $(free -h | grep Mem | awk '{print $4}') "
echo
echo "status of memory usage"
echo
if [ $(free -h | grep Mem | awk '{print $4}' | sed 's/Mi//') -lt 1 ]; then
    echo "Memory is low, please free up some memory"
else
    echo "Memory is okay fire up the system"
fi