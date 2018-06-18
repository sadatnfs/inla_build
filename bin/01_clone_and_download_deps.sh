#!/bin/bash
set -e # Exit with nonzero exit code if anything fails


## Clone INLA
cd /usr/lib/R/library
sudo wget https://gist.githubusercontent.com/sadatnfs/e8a0ca5fe821fb4d95b2b944face8fb3/raw/233849deebc80c3cff3e053bcc57afcfe3a22258/Makefile
sudo make lib-install
sudo make download
