#!/bin/bash
if [ "$1" = "on" ]
then
    nmcli c up "Scanex Rum"
    gsettings set org.gnome.system.proxy mode 'manual'
    # echo "scanex-vpn on"
elif [ "$1" = "off" ]
then
    nmcli c down "Scanex Rum"
    gsettings set org.gnome.system.proxy mode 'none'
    nmcli radio wifi off
    nmcli radio wifi on
    # echo "scanex-vpn off"
else
    echo "Usage: vpn-scanex on | off"
    echo ""
    echo "Scanex VPN Connection Management"
fi


