#!/usr/local/bin/fish

rm ~/.config/fish/config.fish
ln -s ~/Playground/dotfiles/fish/config.fish ~/.config/fish/config.fish

rm ~/.gitconfig
ln -s ~/Playground/dotfiles/git/gitconfig ~/.gitconfig

rm ~/.vimrc
ln -s ~/Playground/dotfiles/vim/vimrc ~/.vimrc

rm ~/.oh-my-fish
ln -s ~/Playground/oh-my-fish/ ~/.oh-my-fish

