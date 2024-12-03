#!/bin/bash

# Check if Polybar is running
if pgrep -x "polybar" > /dev/null
then
    # If Polybar is running, kill it
    killall polybar
    echo "Polybar stopped"
else
    # If Polybar is not running, start it
    # Replace "example" with your actual Polybar name if necessary
    polybar example &
    echo "Polybar started"
fi
