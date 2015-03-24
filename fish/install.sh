#!/bin/bash

# Fish
brew install fish
chsh -s /usr/local/bin/fish

ln -sf ~/Playground/dotfiles/fish/config.fish ~/.config/fish/config.fish

## Custom functions
mkdir -p .config/fish/functions
rm ~/.config/fish/functions/*

cp ~/Playground/dotfiles/fish/functions/* ~/.config/fish/functions/
