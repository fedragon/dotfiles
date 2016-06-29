#!/bin/bash

# Fish
brew reinstall --HEAD fish
chsh -s /usr/local/bin/fish

mkdir -p ~/.config/fish

## Oh My Fish
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

ln -sf $(pwd)/fish/config.fish ~/.config/fish/config.fish

## Custom functions
mkdir -p ~/.config/fish/functions
rm ~/.config/fish/functions/*

cp $(pwd)/fish/functions/* ~/.config/fish/functions/
