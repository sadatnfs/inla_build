#!/bin/bash
set -e # Exit with nonzero exit code if anything fails


## Clone INLA
cd /usr/lib/R/library
wget https://gist.githubusercontent.com/sadatnfs/e8a0ca5fe821fb4d95b2b944face8fb3/raw/5654de02b1778c35ed2594b123dc01434e31f101/Makefile
sudo make lib-install
sudo make download -d 
