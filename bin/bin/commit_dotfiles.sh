#!/bin/bash

CURRENT_DIR=$(pwd)

cd ~/dotfiles

git add .
git commit -m "Automated commit"
git push

cd "$CURRENT_DIR"
echo "Finished commit"
