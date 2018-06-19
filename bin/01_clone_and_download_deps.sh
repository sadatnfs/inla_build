#!/bin/bash
set -e # Exit with nonzero exit code if anything fails


## Clone INLA
cd /usr/lib/R/library
# sudo wget --no-check-certificate https://gist.githubusercontent.com/sadatnfs/e8a0ca5fe821fb4d95b2b944face8fb3/raw/faedf15f2354a9d481881b8b33147dcd944ca0de/Makefile
sudo wget --no-check-certificate https://gist.githubusercontent.com/sadatnfs/e8a0ca5fe821fb4d95b2b944face8fb3/raw/56959aa3de734f9e86a28afc39cb82114a5917b9/Makefile
sudo make download
