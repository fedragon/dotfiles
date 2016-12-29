#!/bin/bash

brew install tmux

ln -sf $(pwd)/tmux/tmux.conf ~/.tmux.conf

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

brew install reattach-to-user-namespace
brew install urlview
