#!/bin/bash

ln -sf $(pwd)/git/gitconfig ~/.gitconfig
ln -sf $(pwd)/git/gitignore ~/.gitignore
cp $(pwd)/git/gitconfig_local ~/.gitconfig_local
echo "Don't forget to configure your global username and email in ~/.gitconfig_local!"
