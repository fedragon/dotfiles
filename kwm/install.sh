#!/bin/bash

src="$(pwd)"

brew install koekeishiya/kwm/kwm
brew install koekeishiya/khd/khd

mkdir -p ~/.kwm

ln -sf "$src/kwm/khdrc" ~/.kwm/khdrc
ln -sf "$src/kwm/kwmrc" ~/.kwm/kwmrc

