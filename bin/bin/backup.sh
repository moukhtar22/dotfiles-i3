#!/bin/bash

# Set the destination directory (the USB mount point)
DEST_DIR="/media/dastarruer/mnt" # Make sure this matches where the USB is mounted

sudo mount /dev/sda1 /media/dastarruer/mnt

if [ $? -eq 0 ]; then
    echo "Drive mounted successfully."
else
    echo "Drive did not mount. Either eject the USB and plug it back in, or put the usb in idiot (no wonder no one loves you)."
    exit 1
fi

# Set the source directory (the folder to back up)
SOURCE_DIR="$HOME/Documents/vault" # Change this to the directory you want to back up


# Check if the USB is mounted
if mount | grep -q "$DEST_DIR"; then
    echo "USB is mounted at $DEST_DIR. Proceeding with backup..."
else
    echo "Error: USB is not mounted at $DEST_DIR. Please mount the USB and try again."
    exit 1
fi

# Perform the backup with rsync
echo "Starting backup from $SOURCE_DIR to $DEST_DIR..."
sudo rsync -avh --progress --delete "$SOURCE_DIR" "$DEST_DIR"

# Check if the rsync command succeeded
if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
else
    echo "Backup failed. Please check for errors."
    exit 1
fi

sudo eject /dev/sda

if [ $? -eq 0 ]; then
    echo "Drive ejected, plug it out and have fun!"
else
    echo "Drive did not eject, pls eject manually with 'sudo eject /dev/sda' (or whatever the drive is called)"
    exit 1
fi

