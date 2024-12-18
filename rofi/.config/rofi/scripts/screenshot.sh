#!/bin/bash

# Define the options to display in Rofi
options="Region Screenshot\nFull Screenshot"

# Use Rofi to display the options and capture the selection
choice=$(echo -e "$options" | rofi -dmenu -p "Flameshot:")

# Handle the choice
case "$choice" in
    "Region Screenshot")
        sleep 0.3
        flameshot gui
        ;;
    "Full Screenshot")
        flameshot full -c
esac
