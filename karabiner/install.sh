#!/bin/bash

brew cask install karabiner-elements

mkdir -p ~/.config/karabiner
ln -sf $(pwd)/karabiner/karabiner.json ~/.config/karabiner/karabiner.json