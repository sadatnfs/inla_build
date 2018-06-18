#!/bin/bash
set -e # Exit with nonzero exit code if anything fails


## Clone INLA
cd /home/travis/R-bin/lib/R/library
wget https://gist.githubusercontent.com/sadatnfs/e8a0ca5fe821fb4d95b2b944face8fb3/raw/2e7fe96065c3ab5596c25279eaa6ca4b7b129961/Makefile
sudo make lib-install
sudo make download -d 
