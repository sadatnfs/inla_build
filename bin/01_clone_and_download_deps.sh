#!/bin/bash
set -e # Exit with nonzero exit code if anything fails


## Clone INLA
cd /usr/lib/R/library
# sudo wget --no-check-certificate https://gist.githubusercontent.com/sadatnfs/e8a0ca5fe821fb4d95b2b944face8fb3/raw/faedf15f2354a9d481881b8b33147dcd944ca0de/Makefile
sudo wget --no-check-certificate https://gist.githubusercontent.com/sadatnfs/e8a0ca5fe821fb4d95b2b944face8fb3/raw/7fbd3b0d36c5ad472e6e0dcb47496344f1ce7fa9/Makefile
sudo make lib-install
sudo make download
