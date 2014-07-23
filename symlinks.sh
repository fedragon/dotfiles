#!/usr/local/bin/fish

rm ~/.config/fish/config.fish
ln -s ~/Workspace/dotfiles/fish/config.fish ~/.config/fish/config.fish

rm ~/.gitconfig
ln -s ~/Workspace/dotfiles/git/gitconfig ~/.gitconfig

rm ~/.vimrc
ln -s ~/Workspace/dotfiles/vim/vimrc ~/.vimrc

rm ~/.oh-my-fish
ln -s ~/Workspace/oh-my-fish/ ~/.oh-my-fish

