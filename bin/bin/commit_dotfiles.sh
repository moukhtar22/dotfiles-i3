#!/bin/bash

# add packages to install script
echo "Adding packages..."
dpkg --get-selections | awk '{print $1}' > ~/dotfiles/install/apt_packages.txt
snap list | awk 'NR>1 {print $1}' > ~/dotfiles/install/snap_packages.txt
echo "Packages added."

CURRENT_DIR=$(pwd)

cd ~/dotfiles

# Check if a commit message argument is provided
if [ -z "$1" ]; then
  echo "Commit message pls"
  exit 1
else
  COMMIT_MESSAGE="$1"
fi

git add .
git commit -m "$COMMIT_MESSAGE"
git push

cd "$CURRENT_DIR"
echo "Finished commit with message: '$COMMIT_MESSAGE'"
