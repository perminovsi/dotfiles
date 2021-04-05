#!/bin/bash
if [ "$1" = "on" ]
then
    nmcli radio wifi off
    nmcli c up "Scanex Wired"
    gsettings set org.gnome.system.proxy mode 'manual'
    # echo "wired-scanex on"
elif [ "$1" = "off" ]
then
    nmcli c down "Scanex Wired"
    gsettings set org.gnome.system.proxy mode 'none'
    nmcli radio wifi on
    # echo "wired-scanex off"
else
    echo "Usage: wired-scanex on | off"
    echo ""
    echo "Scanex Wired Connection Management"
fi
