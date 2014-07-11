#!/bin/bash
sudo apt-get install cabal-install

cabal install hoogle

echo >> ~/.ghci ':def hoogle \x -> return $ ":!hoogle \"" ++ x ++ "\""'
echo >> ~/.ghci ':def doc \x -> return $ ":!hoogle --info \"" ++ x ++ "\""'

sudo ln -s ~/.cabal/bin/hoogle /usr/bin/hoogle

hoogle data

