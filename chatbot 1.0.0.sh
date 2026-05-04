#!/bin/bash

echo "This is a simple bash chatbot. Stay tuned for more updates."
echo "Type 'exit' to quit."
echo ""

while true; do
    read -p "You: " input

    # normalize input (lowercase)
    input=$(echo "$input" | tr '[:upper:]' '[:lower:]')

    if [[ "$input" == "exit" ]]; then
        echo "Bot: Goodbye!"
        break

    elif [[ "$input" == *"hello"* || "$input" == *"hi"* ]]; then
        echo "Bot: Hey there!"

    elif [[ "$input" == *"how are you"* ]]; then
        echo "Bot: I'm great, thank you for asking!"

    elif [[ "$input" == *"name"* ]]; then
        echo "Bot: I'm BashBot!"

    elif [[ "$input" == *"time"* ]]; then
        echo "Bot: The time is $(date +"%H:%M:%S")"

    elif [[ "$input" == *"date"* ]]; then
        echo "Bot: Today is $(date +"%Y-%m-%d")"

    elif [[ "$input" == *"weather"* ]]; then
        echo "Bot: It is currently 78 degrees and snowing in your office."

    else
        echo "Bot: I don't understand that yet."
    fi
done
