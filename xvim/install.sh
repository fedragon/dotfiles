#!/bin/bash

cd ~/Playground
git clone https://github.com/XVimProject/XVim.git
cd XVim

make

ln -sf $(pwd)/xvimrc ~/.xvimrc
