#!/bin/bash
# Convert wallpaper color scheme to catppuccin
WALLPAPER=$1
NAME=$2

gowall convert "$WALLPAPER" -t catppuccin
read
echo "Moving to wallpapers..."
mv ~/Pictures/gowall/$WALLPAPER ~/dotfiles/wallpapers/Pictures/wallpapers/$2

echo "Committing dotfiles..."
commit_dotfiles.sh "Added $NAME wallpaper"

echo "Setting wallpaper..."
feh --bg-scale ~/Pictures/wallpapers/$NAME
