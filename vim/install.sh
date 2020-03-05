#!/bin/bash

brew install vim

ln -sf $(pwd)/vim/vimrc ~/.vimrc

# used for swap files
mkdir -p ~/.vim/tmp

mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall

# ag.vim
brew install the_silver_searcher
