#!/bin/bash

brew tap railwaycat/emacsmacport
brew install emacs-mac --with-spacemacs-icon
brew install coreutils

git clone --recursive https://github.com/syl20bnr/spacemacs ~/.emacs.d

ln -sf $(pwd)/spacemacs ~/.spacemacs
ln -sf $(pwd)/spacemacs/private ~/.emacs.d/
