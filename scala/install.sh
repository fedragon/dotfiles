#!/bin/bash

brew install java

brew install scala --with-docs --with-src

brew install sbt

ln -sf $(pwd)/scala/scalafmt.conf ~/.scalafmt.conf
