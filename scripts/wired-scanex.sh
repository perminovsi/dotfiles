#!/bin/bash
if [ "$1" = "on" ]
then
    nmcli radio wifi off
    nmcli c up "Scanex Wired"
    gsettings set org.gnome.system.proxy mode 'manual'
    ln -sfv $HOME/.dotfiles/git/gitconfig.scanex $HOME/.gitconfig
    ln -sfv $HOME/.dotfiles/ssh/config.scanex $HOME/.ssh/config
elif [ "$1" = "off" ]
then
    nmcli c down "Scanex Wired"
    gsettings set org.gnome.system.proxy mode 'none'
    nmcli radio wifi on
    ln -sfv $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig
    ln -sfv $HOME/.dotfiles/ssh/config $HOME/.ssh/config
else
    echo "Usage: wired-scanex on | off"
    echo ""
    echo "Scanex Wired Connection Management"
fi
