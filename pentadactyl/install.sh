#!/bin/bash

git clone https://github.com/claytron/pentadactyl-solarized.git .pentadactyl/

ln -sf $(pwd)/pentadactylrc ~/.pentadactylrc

echo "Don't forget to install Pentadactyl in Firefox!"
