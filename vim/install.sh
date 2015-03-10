#!/usr/local/bin/fish

mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ~/Playground/dotfiles/vim/vimrc ~/.vimrc
vim +PlugInstall

# Ag.vim
brew install the_silver_searcher

