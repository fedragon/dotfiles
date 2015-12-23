#!/bin/bash

brew install python
pip install powerline-status

mkdir ~/.config/powerline
cp -R /usr/local/lib/python2.7/site-packages/powerline/config_files/* ~/.config/powerline

# Download Powerline patched fonts
git clone https://github.com/Lokaltog/powerline-fonts.git

ln -sf $(pwd)/powerline/shell.json ~/.config/powerline/themes/shell/mine.json

echo "TODO: manually install Powerline patched fonts!"
