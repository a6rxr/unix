#!/bin/bash

# Function to count files in current directory
function file_count {
    echo $(ls -1 | wc -l)
}

# Actual number of files
num_files=$(file_count)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

while true
do
    read guess
    if [[ $guess -eq $num_files ]]
    then
        echo "Congratulations! You guessed right."
        break
    elif [[ $guess -lt $num_files ]]
    then
        echo "Your guess is too low. Try again:"
    else
        echo "Your guess is too high. Try again:"
    fi
done
