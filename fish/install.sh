#!/bin/bash

# Fish
brew install fish
chsh -s /usr/local/bin/fish

## Custom functions
mkdir -p .config/fish/functions
rm ~/.config/fish/functions/*

cp ~/Playground/dotfiles/fish/functions/* ~/.config/fish/functions/
