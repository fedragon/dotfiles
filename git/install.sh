#!/bin/bash

brew install git tig

ln -sf $(pwd)/git/gitconfig ~/.gitconfig
ln -sf $(pwd)/git/gitignore ~/.gitignore
cp $(pwd)/git/gitconfig_local ~/.gitconfig_local

echo "Remember to configure your Git username and email in ~/.gitconfig_local!"
