#!/bin/bash

./homebrew.sh
./git/install.sh

mkdir -p ~/Playground
git clone https://github.com/fedragon/dotfiles.git ~/Playground/dotfiles

./git/symlinks.sh

./karabiner/install.sh

./fish/install.sh
./powerline/install.sh
./tmux/install.sh
./spacemacs/install.sh

./amethyst/install.sh

./scala/install.sh
