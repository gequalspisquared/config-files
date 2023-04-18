#!/bin/bash

folders=(
    "$HOME/.config/nvim" 
    "$HOME/.config/alacritty" 
    "$HOME/.config/kitty" 
    "$HOME/.config/awesome" 
    "$HOME/.config/rofi"
    "$HOME/.zshrc"
    "$HOME/.tmux.conf"
    "$HOME/.tmux"
)

echo Removing old files;
find . -maxdepth 1 ! -name 'update.sh' ! -name ".git*" ! -name "." -type d -exec rm -rf {} +;

for i in "${folders[@]}"
do
    echo Updating $i;
    cp -r $i .
done
