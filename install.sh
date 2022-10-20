#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap homebrew/cask-cask

./git/install.sh

./cuttlefish/install.sh

./fish/install.sh

./karabiner/install.sh

./vim/install.sh

brew cask install homebrew/cask-versions/java8

brew install bat exa

./starship/install.sh

brew cask install 1password amethyst docker dropbox firefox goland iterm2 obsidian slack

/usr/local/bin/fish -c enable_modal_editing com.googlecode.iterm2 com.jetbrains.goland com.microsoft.VSCode md.obsidian
