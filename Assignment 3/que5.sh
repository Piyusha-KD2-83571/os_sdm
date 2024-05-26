#!/bin/bash

# Prompt the user to enter three numbers
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3

# Check if the inputs are valid numbers
if ! [[ "$num1" =~ ^-?[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$num2" =~ ^-?[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$num3" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter valid numbers."
    exit 1
fi

# Determine the greatest number
if (( $(echo "$num1 > $num2" | bc -l) )) && (( $(echo "$num1 > $num3" | bc -l) )); then
    greatest=$num1
elif (( $(echo "$num2 > $num1" | bc -l) )) && (( $(echo "$num2 > $num3" | bc -l) )); then
    greatest=$num2
else
    greatest=$num3
fi

# Display the greatest number
echo "The greatest number is: $greatest"

