#!/bin/bash

brew cask install atom

apm install --packages-file $(pwd)/atom/packages

mkdir -p ~/.atom
ln -sf $(pwd)/atom/config.cson ~/.atom/config.cson
ln -sf $(pwd)/atom/keymap.cson ~/.atom/keymap.cson
