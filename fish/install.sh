#!/bin/bash

# Fish
brew install fish
chsh -s /usr/local/bin/fish

## Oh my fish
git clone https://github.com/fedragon/oh-my-fish.git ~/Playground/oh-my-fish
~/Playground/oh-my-fish/tools/install.sh | fish

## Custom functions
mkdir -p .config/fish/functions
rm ~/.config/fish/functions/*

cp ~/Playground/dotfiles/fish/functions/* ~/.config/fish/functions/
