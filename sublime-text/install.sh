#!/bin/bash

brew tap caskroom/versions
brew cask install sublime-text3

src="$(pwd)"

dest="$HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User"
eval mkdir -p "$dest"

eval ln -sf "$src/sublime-text/Package\ Control.sublime-settings" "$dest/Package\ Control.sublime-settings"
eval ln -sf "$src/sublime-text/Preferences.sublime-settings" "$dest/Preferences.sublime-settings"
eval ln -sf "$src/sublime-text/Scala2.sublime-settings" "$dest/Scala2.sublime-settings"
eval ln -sf "$src/sublime-text/SublimeGit.sublime-settings" "$dest/SublimeGit.sublime-settings"
