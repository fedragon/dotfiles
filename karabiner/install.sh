#!/bin/bash

brew cask install karabiner

ln -sf $(pwd)/private.xml ~/Library/Application\ Support/Karabiner/private.xml

brew cask install seil

echo "TODO: Set Caps Lock to Escape (keycode 80) in Seil!"
