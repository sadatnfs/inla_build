#!/bin/bash
set -e # Exit with nonzero exit code if anything fails


## Clone INLA
cd /home/travis/R-bin/lib/R/library
wget https://gist.githubusercontent.com/sadatnfs/e8a0ca5fe821fb4d95b2b944face8fb3/raw/2167a0ec0c77008fe5955e62ff25a01a2ae6e08f/Makefile
sudo make lib-install
sudo make download -d 
