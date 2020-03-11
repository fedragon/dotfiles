#!/bin/bash

brew install fish
chsh -s /usr/local/bin/fish

mkdir -p ~/.config/fish

ln -sf $(pwd)/fish/config.fish ~/.config/fish/config.fish
ln -sf $(pwd)/fish/fishfile ~/.config/fish/fishfile

rm -r ~/.config/fish/functions
cp -r $(pwd)/fish/functions ~/.config/fish/

