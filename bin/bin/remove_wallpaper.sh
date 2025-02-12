#!/bin/bash

WALLPAPER=$(ls ~/Pictures/wallpapers | fzf)

if [ -z "$WALLPAPER" ]; then
    echo "No wallpaper selected. Exiting..."
    exit 1
fi

# Confirm deletion
echo "Are you sure you want to delete $WALLPAPER? (y/N)"
read -r CONFIRM
if [[ "$CONFIRM" != "y" ]]; then
    echo "Deletion canceled."
    exit 1
fi

# Remove wallpaper from both locations
rm -f "~/Pictures/wallpapers/$WALLPAPER"
rm -f "~/dotfiles/wallpapers/Pictures/wallpapers/$WALLPAPER"

echo "$WALLPAPER removed."

# Commit the changes to dotfiles
commit_dotfiles.sh "Removed $WALLPAPER wallpaper"
