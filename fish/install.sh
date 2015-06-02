#!/bin/bash

# Fish
brew install fish
chsh -s /usr/local/bin/fish

ln -sf $(pwd)/config.fish ~/.config/fish/config.fish

## Custom functions
mkdir -p .config/fish/functions
rm ~/.config/fish/functions/*

cp $(pwd)/functions/* ~/.config/fish/functions/

## Completions
mkdir -p .config/fish/completions
rm ~/.config/fish/completions/*
cp $(pwd)/completions/* ~/.config/fish/completions/
