#!/bin/bash

# Fish
brew install fish
chsh -s /usr/local/bin/fish

## Oh my fish
git clone https://github.com/fedragon/oh-my-fish.git ~/Playground/oh-my-fish
~/Playground/oh-my-fish/tools/install.sh | fish

## Custom functions
rm ~/.oh-my-fish/functions/fish_greeting.fish
cp ~/Playground/dotfiles/fish/fish_greeting.fish ~/.oh-my-fish/functions/fish_greeting.fish
