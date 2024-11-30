#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/dotfiles/Wallpapers/Pictures/Wallpapers"

# Get the current wallpaper
CURRENT_WALLPAPER=$(xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image)

# Get a random wallpaper from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Check if the wallpaper is the same as the current one
while [[ "$WALLPAPER" == "$CURRENT_WALLPAPER" ]]; do
    # Get another random wallpaper if the same
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
done

# Set the new wallpaper
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s "$WALLPAPER"

echo "Wallpaper set to $WALLPAPER"
