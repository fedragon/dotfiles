#!/bin/bash

brew install cabal-install

cabal install alex happy
cabal install hoogle
cabal install ghc-mod
cabal install hdevtools

rm -f ~/.ghci
ln -s ~/Playground/dotfiles/haskell/ghci ~/.ghci

set -U fish_user_paths $fish_user_paths ~/.cabal/bin

hoogle data

