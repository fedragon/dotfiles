#!/bin/bash

brew install tmux

ln -sf $(pwd)/tmux.conf ~/.tmux.conf

gem install tmuxinator
