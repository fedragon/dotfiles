#!/bin/bash

git clone https://github.com/koekeishiya/kwm.git ~/Playground/kwm

cd ~/Playground/kwm

make

cd -

ln -sf ~/Playground/kwm/bin/kwmc /usr/local/bin/kwmc

ln -sf $(pwd)/kwm/kwm /usr/local/bin/kwm
ln -sf $(pwd)/kwm/kwmrc ~/.kwmrc
