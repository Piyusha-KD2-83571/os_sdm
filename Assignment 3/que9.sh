#!/bin/bash

# Function to calculate factorial
factorial() {
    local num=$1
    if [ "$num" -le 1 ]; then
        echo 1
    else
        echo $(( num * $(factorial $(( num - 1 ))) ))
    fi
}

# Prompt the user to enter a number
read -p "Enter a number: " number

# Check if the input is a valid non-negative integer
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid non-negative integer."
    exit 1
fi

# Calculate the factorial of the given number
result=$(factorial $number)

# Display the result
echo "The factorial of $number is: $result"

