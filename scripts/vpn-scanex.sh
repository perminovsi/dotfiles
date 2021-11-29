#!/bin/bash
if [ "$1" = "on" ]
then
    nmcli c up "Scanex Rum"
    gsettings set org.gnome.system.proxy mode 'manual'
    ln -sfv $HOME/.dotfiles/git/.gitconfig.scanex $HOME/.gitconfig
    ln -sfv $HOME/.dotfiles/ssh/config.scanex $HOME/.ssh/config
elif [ "$1" = "off" ]
then
    nmcli c down "Scanex Rum"
    gsettings set org.gnome.system.proxy mode 'none'
    nmcli radio wifi off
    nmcli radio wifi on
    ln -sfv $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig
    ln -sfv $HOME/.dotfiles/ssh/config $HOME/.ssh/config
else
    echo "Usage: vpn-scanex on | off"
    echo ""
    echo "Scanex VPN Connection Management"
fi


