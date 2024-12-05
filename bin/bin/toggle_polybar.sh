#!/bin/bash

# Check if Polybar is running
if pgrep -x "polybar" > /dev/null
then
    # If Polybar is running, kill it
    killall polybar
    echo "Polybar stopped"
else
    # If Polybar is not running, start it
    $HOME/.config/polybar/launch.sh
    echo "Polybar started"
fi
