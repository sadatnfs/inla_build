#!/bin/bash
set -e # Exit with nonzero exit code if anything fails


## Clone INLA
cd /home/travis/R-bin/lib/R/library
wget https://gist.githubusercontent.com/sadatnfs/e8a0ca5fe821fb4d95b2b944face8fb3/raw/d685dc0db5ad7c60281a3bc041864a0ee66d0480/Makefile
sudo make lib-install
sudo make download -d 
