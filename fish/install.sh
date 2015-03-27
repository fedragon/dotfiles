#!/bin/bash

# Fish
brew install fish
chsh -s /usr/local/bin/fish

ln -sf $(pwd)/config.fish ~/.config/fish/config.fish

## Custom functions
mkdir -p .config/fish/functions
rm ~/.config/fish/functions/*

cp $(pwd)/functions/* ~/.config/fish/functions/
