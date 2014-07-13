#!/usr/bin/fish
sudo apt-get install cabal-install

cabal install hoogle
cabal install ghc-mod
cabal install hdevtools

rm -f ~/.ghci
ln -s (pwd)/ghc/.ghci ~/.ghci

set -U fish_user_paths $fish_user_paths ~/.cabal/bin

hoogle data

