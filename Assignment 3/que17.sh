#!/bin/bash

# Define the number of rows
rows=5

# Outer loop for rows
for ((i=1; i<=rows; i++))
do
    # Inner loop for columns
    for ((j=1; j<=i; j++))
    do
        # Print asterisks
        echo -n "* "
    done
    # Move to the next line after each row
    echo
done

