#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

xcode-select --install
brew install git
brew install caskroom/cask/brew-cask

mkdir -p ~/Playground
git clone https://github.com/fedragon/dotfiles.git ~/Playground/dotfiles

cd ~/Playground/dotfiles

./git/symlinks.sh

./karabiner/install.sh

./fish/install.sh
./powerline/install.sh
./tmux/install.sh
./spacemacs/install.sh

./amethyst/install.sh

./scala/install.sh
