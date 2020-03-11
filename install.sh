#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap homebrew/cask-cask

brew install git
brew install tig

./git/symlinks.sh

./karabiner/install.sh

./fish/install.sh

./vim/install.sh

brew cask install homebrew/cask-versions/java8

./scala/install.sh

brew cask install iterm2
brew cask install firefox
brew cask install docker
brew cask install dropbox
brew cask install 1password
brew cask install amethyst
brew cask install joplin
brew cask install flux
