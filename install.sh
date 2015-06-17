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
./vim/install.sh
./spacemacs/install.sh

./amethyst/install.sh

./scala/install.sh

./clojure/install.sh
./clojurescript/install.sh
./haskell/install.sh
./javascript/install.sh

./ctags/install.sh
