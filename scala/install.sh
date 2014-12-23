#!/usr/local/bin/fish

git clone https://github.com/yuroyoro/svm ~/.svm

set -U fish_user_paths $fish_user_paths ~/.svm

svm install scala-2.11.2

set -U fish_user_paths $fish_user_paths ~/.svm/current/rt/bin

brew install sbt

## SBT global plugins
mkdir -p ~/.sbt/0.13/plugins
ln -s ~/Playground/dotfiles/scala/plugins.sbt ~/.sbt/0.13/plugins/plugins.sbt

