#!/bin/bash
if [ "$1" = "on" ]
then
    nmcli radio wifi off
    nmcli c up "Scanex Wired"
    gsettings set org.gnome.system.proxy mode 'manual'
    # echo "wired-scanex on"
    cp ~/.gitconfig.scanex ~/.gitconfig
    cp ~/.ssh/config.scanex ~/.ssh/config
elif [ "$1" = "off" ]
then
    nmcli c down "Scanex Wired"
    gsettings set org.gnome.system.proxy mode 'none'
    nmcli radio wifi on
    cp ~/.gitconfig.main ~/.gitconfig
    cp ~/.ssh/config.main ~/.ssh/config
    # echo "wired-scanex off"
else
    echo "Usage: wired-scanex on | off"
    echo ""
    echo "Scanex Wired Connection Management"
fi
