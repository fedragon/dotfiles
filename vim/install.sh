#!/usr/local/bin/fish

mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/tmp

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

cd ~/.vim/bundle/vimproc.vim
make
cd -

ln -s ~/Playground/dotfiles/vim/vimrc ~/.vimrc

# Ag.vim
brew install the_silver_searcher

