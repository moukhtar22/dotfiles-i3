#!/bin/bash

# Paths to the Picom configuration files
CONFIG_NO_BLUR="$HOME/.config/picom/picom_no_blur.conf"
CONFIG_BLUR="$HOME/.config/picom/picom.conf"

# Check if Picom is running
if pgrep -x "picom" > /dev/null; then
    # Get the current config file Picom is using
    CURRENT_CONFIG=$(ps aux | grep "[p]icom" | grep -- '--config' | awk '{for (i=1;i<=NF;i++) if ($i=="--config") print $(i+1)}')

    # Resolve tilde to home directory
    RESOLVED_CONFIG_NO_BLUR=$(eval echo "$CONFIG_NO_BLUR")
    RESOLVED_CONFIG_BLUR=$(eval echo "$CONFIG_BLUR")

    # Determine which config is being used and switch to the other
    if [[ "$CURRENT_CONFIG" == "$RESOLVED_CONFIG_NO_BLUR" ]]; then
        # Switch to blur config
        pkill picom
        picom --config "$RESOLVED_CONFIG_BLUR" &
        echo "Switched to Picom with blur config."
    else
        # Switch to no blur config
        pkill picom
        picom --config "$RESOLVED_CONFIG_NO_BLUR" &
        echo "Switched to Picom with no blur config."
    fi
else
    # If Picom is not running, start it with the default config
    picom --config "$CONFIG_BLUR" &
    echo "Started Picom with default blur config."
fi
