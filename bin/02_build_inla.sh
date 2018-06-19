#!/bin/bash
set -e # Exit with nonzero exit code if anything fails


## Clone INLA
cd /usr/lib/R/library
sudo make lib-install
sudo make bin
sudo mv inla/rinla/R/obsolete/* inla/rinla/R/
sudo make package
R --vanilla CMD INSTALL /usr/lib/R/library/tmp/RINLA/INLA_*.tgz
sudo ln -s /usr/lib/R/library/INLA/bin/linux/64bit/fmesher.run /usr/lib/R/library/INLA/bin/linux/64bit/fmesher.static 
sudo ln -s /usr/lib/R/library/INLA/bin/linux/32bit/fmesher.run /usr/lib/R/library/INLA/bin/linux/32bit/fmesher.static 
sudo ln -s /usr/lib/R/library/INLA/bin/linux/64bit/inla.run /usr/lib/R/library/INLA/bin/linux/64bit/inla.static 
sudo ln -s /usr/lib/R/library/INLA/bin/linux/32bit/inla.run /usr/lib/R/library/INLA/bin/linux/32bit/inla.static

