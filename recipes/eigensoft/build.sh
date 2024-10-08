#!/usr/bin/env bash

set -xeuo pipefail
cd src
make -j ${CPU_COUNT} all

# Install (makefile install has hard-coded destination, so have to do this manually)
 mkdir -p $PREFIX/bin
 cp {baseprog,convertf,mergeit,pca} $PREFIX/bin/
 cp {eigensrc/pcatoy,eigensrc/smartrel,eigensrc/smarteigenstrat,eigensrc/twstats} $PREFIX/bin/
 cp {eigensrc/eigenstrat,eigensrc/eigenstratQTL,eigensrc/smartpca} $PREFIX/bin/
