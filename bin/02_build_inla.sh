#!/bin/bash
set -e # Exit with nonzero exit code if anything fails


## Clone INLA
cd /home/travis/R-bin/lib/R/library
sudo make bin
sudo mv inla/rinla/R/obsolete/* inla/rinla/R/ 
sudo make package 
R --vanilla CMD INSTALL /home/travis/R-bin/lib/R/library/tmp/RINLA/INLA_*.tgz 
sudo ln -s /home/travis/R-bin/lib/R/library/INLA/bin/linux/64bit/fmesher.run /home/travis/R-bin/lib/R/library/INLA/bin/linux/64bit/fmesher.static 
sudo ln -s /home/travis/R-bin/lib/R/library/INLA/bin/linux/32bit/fmesher.run /home/travis/R-bin/lib/R/library/INLA/bin/linux/32bit/fmesher.static 
sudo ln -s /home/travis/R-bin/lib/R/library/INLA/bin/linux/64bit/inla.run /home/travis/R-bin/lib/R/library/INLA/bin/linux/64bit/inla.static 
sudo ln -s /home/travis/R-bin/lib/R/library/INLA/bin/linux/32bit/inla.run /home/travis/R-bin/lib/R/library/INLA/bin/linux/32bit/inla.static

