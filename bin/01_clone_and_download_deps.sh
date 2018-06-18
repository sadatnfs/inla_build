#!/bin/bash
set -e # Exit with nonzero exit code if anything fails


## Clone INLA
cd /home/travis/R-bin/lib/R/library
wget https://gist.githubusercontent.com/sadatnfs/e8a0ca5fe821fb4d95b2b944face8fb3/raw/01bc3ec3af5e3e82cce7d54e829b729837726950/Makefile
sudo make lib-install
sudo make download -d 
