#!/bin/bash

# Ask the user if they want to play rock paper scissors
read -p "Would you like to play rock paper scissors? (yes/no): " choice

# Check the user's choice
if [ "$choice" = "yes" ]; then
    # Execute the Python file for the rock paper scissors game
    python3 rock_paper_scissors.py
else
    # If the user chooses not to play, display a message
    echo "That's too bad, maybe next time."
fi
