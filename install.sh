#!/bin/bash

./homebrew.sh
./git/install.sh

mkdir -p ~/Playground
git clone https://github.com/fedragon/dotfiles.git ~/Playground/dotfiles

./fish/install.sh
./vim/install.sh
./haskell/install.sh

./scala.sh

./symlinks.sh

