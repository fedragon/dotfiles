#!/bin/bash

brew install tmux

ln -sf $(pwd)/tmux/tmux.conf ~/.tmux.conf

gem install tmuxinator

brew install tmux-cssh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
