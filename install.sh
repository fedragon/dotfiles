# Installation

  mkdir -p ~/Workspace
  git clone https://github.com/fedragon/dotfiles.git ~/Workspace/dotfiles

## Git

  ln -s ~/Workspace/dotfiles/.gitconfig ~/.gitconfig

## Fish shell

  sudo apt-add-repository ppa:fish-shell/release-2
  sudo apt-get update
  sudo apt-get install fish

### Oh my fish

  git clone https://github.com/fedragon/oh-my-fish.git ~/Workspace/oh-my-fish
  ~/Workspace/oh-my-fish/tools/install.sh | fish

  ln -s ~/Workspace/dotfiles/config.fish ~/.config/fish/config.fish
  ln -s ~/Workspace/oh-my-fish/ ~/.oh-my-fish

## VIM configuration

### Install GVIM

  sudo apt-get install vim-gnome

### Install Vundle

  mkdir -p ~/.vim/bundle
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  ln -s ~/Workspace/dotfiles/.vimrc ~/.vimrc
  mkdir -p ~/.vim/tmp

### Install scala syntax

  mkdir -p ~/.vim/{ftdetect,indent,syntax} && for d in ftdetect indent syntax ; do curl -o ~/.vim/$d/scala.vim https://raw.githubusercontent.com/scala/scala-dist/master/tool-support/src/vim/$d/scala.vim; done

### Set fish shell as default shell (effective next time you log in)

  chsh -s /usr/bin/fish

