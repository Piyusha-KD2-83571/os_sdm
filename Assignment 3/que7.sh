#!/bin/bash

# Prompt the user to enter a number
read -p "Enter a number: " number

# Check if the input is a valid number
if ! [[ "$number" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

# Determine if the number is positive or negative
if (( $(echo "$number > 0" | bc -l) )); then
    echo "$number is a positive number."
elif (( $(echo "$number < 0" | bc -l) )); then
    echo "$number is a negative number."
else
    echo "$number is zero."
fi

