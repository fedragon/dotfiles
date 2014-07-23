#!/usr/local/bin/fish

git clone https://github.com/yuroyoro/svm ~/.svm

set -U fish_user_paths $fish_user_paths ~/.svm

svm install scala-2.11.2

set -U fish_user_paths $fish_user_paths ~/.svm/current/rt/bin

