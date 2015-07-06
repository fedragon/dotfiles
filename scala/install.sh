#!/bin/bash

brew install scala --with-docs --with-src

brew install sbt

## SBT global plugins
mkdir -p ~/.sbt/0.13/plugins
ln -s $(pwd)/plugins.sbt ~/.sbt/0.13/plugins/plugins.sbt
