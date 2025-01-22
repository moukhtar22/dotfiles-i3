#!/bin/bash
# Install all apt packages

# Check if the package list file exists
if [ ! -f packages.txt ]; then
  echo "Error: installed_packages.txt not found. Generate it first using dpkg."
  exit 1
fi

# Update package index
echo "Updating package index..."
sudo apt update
sudo apt upgrade

# Install packages from the list
echo "Installing packages..."
while read -r package; do
  if ! dpkg -l | grep -qw "$package"; then
    echo "Installing $package..."
    sudo apt install -y "$package"
  else
    echo "$package is already installed, skipping..."
  fi
done < installed_packages.txt

echo "Done!"
