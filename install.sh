#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap homebrew/cask-cask

./git/install.sh

./cuttlefish/install.sh

./fish/install.sh

./karabiner/install.sh

./vim/install.sh

brew cask install homebrew/cask-versions/java8

./scala/install.sh

brew install bat exa

./starship/install.sh

brew cask install 1password amethyst docker dropbox firefox flux iterm2 obsidian slack