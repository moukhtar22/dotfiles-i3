#!/bin/bash

# Check if Picom is running
if pgrep -x "picom" > /dev/null
then
    # If Picom is running, kill it
    killall picom
    echo "Picom stopped"
else
    # If Picom is not running, start it
    picom --config ~/.config/picom/picom.conf &
    echo "Picom started"
fi
