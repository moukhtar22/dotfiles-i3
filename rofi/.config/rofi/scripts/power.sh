#!/bin/bash

# Define options
OPTIONS=" Lock\n󰗽 Logout\n󰥔 Suspend\n Reboot\n Shutdown"

# Show the menu and get the user's choice
CHOICE=$(echo -e "$OPTIONS" | rofi -dmenu -i -p "Power Menu:")

case "$CHOICE" in
    " Lock")
        # Lock the screen
        i3lock ;;  # Replace with your preferred lock screen command
    "󰗽 Logout")
        # Logout from the current session
        i3-msg exit ;;  # Replace with "pkill -KILL -u $USER" if not using i3
    "󰥔 Suspend")
        # Suspend the system
        systemctl suspend ;;
    " Reboot")
        # Reboot the system
        systemctl reboot ;;
    " Shutdown")
        # Shutdown the system
        systemctl poweroff ;;
    *)
        # Do nothing on an invalid choice
        exit 1 ;;
esac
