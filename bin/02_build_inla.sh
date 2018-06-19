#!/bin/bash
set -e # Exit with nonzero exit code if anything fails


## Clone INLA
cd /usr/lib/R/library
make lib-install && make bin && mv inla/rinla/R/obsolete/* inla/rinla/R/ && make package
R --vanilla CMD INSTALL /usr/lib/R/library/tmp/RINLA/INLA_*.tgz
ln -s /usr/lib/R/library/INLA/bin/linux/64bit/fmesher.run /usr/lib/R/library/INLA/bin/linux/64bit/fmesher.static 
ln -s /usr/lib/R/library/INLA/bin/linux/32bit/fmesher.run /usr/lib/R/library/INLA/bin/linux/32bit/fmesher.static 
ln -s /usr/lib/R/library/INLA/bin/linux/64bit/inla.run /usr/lib/R/library/INLA/bin/linux/64bit/inla.static 
ln -s /usr/lib/R/library/INLA/bin/linux/32bit/inla.run /usr/lib/R/library/INLA/bin/linux/32bit/inla.static

