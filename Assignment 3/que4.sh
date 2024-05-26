#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local num=$1

    # 0 and 1 are not prime numbers
    if [ "$num" -le 1 ]; then
        return 1
    fi

    # 2 and 3 are prime numbers
    if [ "$num" -le 3 ]; then
        return 0
    fi

    # Eliminate even numbers and multiples of 3
    if [ $((num % 2)) -eq 0 ] || [ $((num % 3)) -eq 0 ]; then
        return 1
    fi

    # Check for factors from 5 to the square root of the number
    local i=5
    while [ $((i * i)) -le "$num" ]; do
        if [ $((num % i)) -eq 0 ] || [ $((num % (i + 2))) -eq 0 ]; then
            return 1
        fi
        i=$((i + 6))
    done

    return 0
}

# Prompt the user to enter a number
read -p "Enter a number: " number

# Check if the input is a valid number
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid positive integer."
    exit 1
fi

# Check if the number is prime
if is_prime "$number"; then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi

