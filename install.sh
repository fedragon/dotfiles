#!/bin/bash

./homebrew.sh
./git/install.sh

mkdir -p ~/Workspace
git clone https://github.com/fedragon/dotfiles.git ~/Workspace/dotfiles

./fish/install.sh
./vim/install.sh
./haskell/install.sh

./scala.sh

./symlinks.sh

