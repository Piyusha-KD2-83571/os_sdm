#!/bin/bash

# Prompt the user to enter a number
read -p "Enter a number: " number

# Check if the input is a valid number
if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid integer."
    exit 1
fi

# Print the multiplication table for the given number
echo "Multiplication table for $number:"
for i in {1..10}; do
    result=$((number * i))
    echo "$number * $i = $result"
done

