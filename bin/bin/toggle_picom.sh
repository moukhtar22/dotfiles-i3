#!/bin/bash

if pgrep -x "picom" > /dev/null
then
    echo "Picom is running. Stopping Picom..."
    pkill picom
else
    echo "Picom is not running. Starting Picom..."
    picom --transparent-clipping --config ~/.config/picom/picom.conf &
fi
