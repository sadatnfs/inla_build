#!/bin/bash
set -e # Exit with nonzero exit code if anything fails


## Clone INLA
cd /usr/lib/R/library
sudo wget https://gist.githubusercontent.com/sadatnfs/8c28a1024fbec239fa29347bea456918/raw/979ab801d43b8cd63a2c8a063578619987f0e728/Makefile
sudo make lib-install
sudo make download
