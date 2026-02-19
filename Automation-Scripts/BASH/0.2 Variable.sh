#!/bin/bash

echo "What is your name?"

read name

echo "Hello, $name! Welcome to the DevOps journey."



# Now i understand how to use variables in bash scripting. 
# I can read user input and store it in variables, and then use those variables to display personalized messages. 
# This is a fundamental aspect of scripting that allows for dynamic and interactive scripts.




echo "What is your age?"

read age

if [ $age -lt 18 ]; then
    echo -n "$name are a minor."
elif [ $age -lt 65 ]; then
    echo -n "$name are an adult."   
else
    echo -n "$name are an senior citizen."
fi

echo "and you are $age years old."


# if else statements 
# echo for print 
# read for user input
# -n option in echo to avoid new line after the message.
# -lt for less than comparison in the if statement.
# -ge for greater than or equal to comparison in the elif statement.


# Output:

# What is your name?
# Ankit Sharma
# Hello, Ankit Sharma! Welcome to the DevOps journey.
# What is your age?
# 21
# Ankit Sharma are an adult.and you are 21 years old.