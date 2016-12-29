#!/bin/bash

# Homebrew & Cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask

# Git (just the bare minimum required to clone)
xcode-select --install
brew install git
brew install tig

mkdir -p ~/Playground
git clone https://github.com/fedragon/dotfiles.git ~/Playground/dotfiles

cd ~/Playground/dotfiles

./git/symlinks.sh

./karabiner/install.sh

./fish/install.sh
./vim/install.sh
./tmux/install.sh
./atom/install.sh
./kwm/install.sh

./amethyst/install.sh

./scala/install.sh
./ctags/install.sh

./sublime-text/install.sh

brew cask install flux

brew cask install firefox
./vimperator/install.sh
