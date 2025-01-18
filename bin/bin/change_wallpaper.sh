#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/dotfiles/wallpapers/Pictures/wallpapers"

# Get the current wallpaper (feh stores this in an X property)
CURRENT_WALLPAPER=$(xprop -root _XROOTPMAP_ID | awk '{print $3}')

# Get a random wallpaper from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Check if the wallpaper is the same as the current one
while [[ "$WALLPAPER" == "$CURRENT_WALLPAPER" ]]; do
    # Get another random wallpaper if the same
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
done

# Set the new wallpaper using feh
feh --bg-scale "$WALLPAPER"

notify-send -t 1 "Wallpaper set" "$WALLPAPER"
