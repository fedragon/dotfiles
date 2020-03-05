#!/bin/bash

brew install scala@2.11
brew install sbt

mkdir -p ~/.sbt/1.0/plugins

ln -sf $(pwd)/scala/basic-plugins.sbt ~/.sbt/1.0/plugins/basic-plugins.sbt
ln -sf $(pwd)/scala/scalafmt.conf ~/.scalafmt.conf
