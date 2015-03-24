#!/bin/bash

./homebrew.sh
./git/install.sh

mkdir -p ~/Playground
git clone https://github.com/fedragon/dotfiles.git ~/Playground/dotfiles

./git/symlinks.sh

./fish/install.sh
./powerline/install.sh
./tmux/install.sh
./vim/install.sh

./clojure/install.sh
./clojurescript/install.sh
./haskell/install.sh
./javascript/install.sh
./scala/install.sh

./ctags/install.sh
