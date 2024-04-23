#!/bin/bash

APPLICATION="VLC"
DOTFILE="$DOTFILES/vlc/vlcrc"
CONFIG_FILE="$HOME/Library/Preferences/org.videolan.vlc/vlcrc"

if [ ! -e $CONFIG_FILE ]; then
    mkdir -p $(dirname $CONFIG_FILE)
    ln -s $DOTFILE $CONFIG_FILE
elif [ ! -L $CONFIG_FILE ] || [ "$(readlink $CONFIG_FILE)" != "$DOTFILE" ]; then 
    read -p "Overwrite existing $APPLICATION configuration ($CONFIG_FILE)? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        ln -sf $DOTFILES/vlc/vlcrc ~/Library/Preferences/org.videolan.vlc/vlcrc
    else
        echo "No action taken."
    fi
fi
echo "$APPLICATION configuration linked."
echo "  $CONFIG_FILE -> $DOTFILE"
