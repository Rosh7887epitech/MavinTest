#!/bin/sh

# Compile the main.c file
make re

# Run the compiled program
./main

# Check the exit status
if [ $? -eq 5 ]; then
    echo "Test passed"
else
    echo "Test failed"
fi

make fclean
