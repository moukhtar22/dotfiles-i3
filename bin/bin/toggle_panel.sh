#!/bin/bash

# Check if XFCE Panel 1 is running (visible)
if xfconf-query -c xfce4-panel -p /panels/panel-1/visibility | grep -q "true"; then
    # If Panel 1 is visible, hide it
    xfconf-query -c xfce4-panel -p /panels/panel-1/visibility -s false
    echo "Panel 1 hidden"
else
    # If Panel 1 is hidden, show it
    xfconf-query -c xfce4-panel -p /panels/panel-1/visibility -s true
    echo "Panel 1 visible"
fi
