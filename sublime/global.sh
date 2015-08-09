#!/bin/bash

source colors.sh

if [ -d "$HOME/.config/sublime-text-3/Packages/User" ]; then
    msg_update "Sublime Key Map"
    msg_update "Preferences Settings"
    rm ~/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap
    rm ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

    sudo ln -s $DOTFILES/sublime/Default\ \(Linux\).sublime-keymap ~/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap
    sudo ln -s $DOTFILES/sublime/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
    msg_cheking "Sublime Key Map"
    msg_cheking "Preferences Settings".
else
    msg_alert "Sublime Text not installed"
fi
