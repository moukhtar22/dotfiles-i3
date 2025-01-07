#!/bin/bash

if [ -z "$DISPLAY" ]; then
    export DISPLAY=:0
fi

# Path to your save_workspaces script
SAVE_WORKSPACES_SCRIPT="save_workspace_layouts.sh"

# Listen for window events and execute the save script on relevant changes
while true; do
    i3-msg -t subscribe '[ "window" ]' | while read -r event; do
        if echo "$event" | grep -q '"change":"new"'; then
            echo "New window detected. Saving workspaces..."
            "$SAVE_WORKSPACES_SCRIPT"
        elif echo "$event" | grep -q '"change":"close"'; then
            echo "Window closed. Saving workspaces..."
            bash "$SAVE_WORKSPACES_SCRIPT"
        fi
    done
done
