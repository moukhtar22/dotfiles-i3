#!/bin/bash

WALLPAPER=$1
NAME=$2

gowall convert "$WALLPAPER" -t catppuccin
read
echo "Moving to wallpapers..."
mv ~/Pictures/gowall/$WALLPAPER ~/Pictures/wallpapers/$2

echo "Copying to dotfiles..." 
cp -f ~/Pictures/wallpapers/$2 ~/dotfiles/wallpapers/Pictures/wallpapers/

echo "Committing dotfiles..."
commit_dotfiles.sh "Added $NAME wallpaper"