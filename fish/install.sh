#!/bin/bash

# Fish
brew reinstall --HEAD fish
chsh -s /usr/local/bin/fish

mkdir -p ~/.config/fish

ln -sf $(pwd)/fish/config.fish ~/.config/fish/config.fish

## Custom functions
mkdir -p ~/.config/fish/functions
rm ~/.config/fish/functions/*

cp $(pwd)/fish/functions/* ~/.config/fish/functions/

## Fisher
ln -sf $(pwd)/fish/fishfile ~/.config/fish/fishfile
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
