#!/bin/sh

brew install python
pip install git+git://github.com/Lokaltog/powerline

# Reinstall MacVim to enable Powerline support
brew install macvim --env-std --override-system-vim

mkdir ~/.config/powerline
cp -R /usr/local/lib/python2.7/site-packages/powerline/config_files/* ~/.config/powerline

# Download Powerline patched fonts
git clone https://github.com/Lokaltog/powerline-fonts.git

echo "Don't forget to install Powerline patched fonts!"
