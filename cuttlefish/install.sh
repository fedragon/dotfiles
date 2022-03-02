#!/bin/bash

curl -L -o $(pwd)/cuttlefish/cuttlefish.tar.gz https://github.com/fedragon/cuttlefish/releases/download/v0.3.0/binaries-darwin64.tar.gz
tar xf $(pwd)/cuttlefish/cuttlefish.tar.gz
cd cuttlefish-darwin64
make install