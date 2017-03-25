#!/bin/sh
LCIOVER=""
if [[ $# -ge 1 ]]
then
	LCIOVER=${1}
fi
if [[ ! -e "LCIO/LCIOConfig.cmake" ]]
then
	curl -OL https://github.com/iLCSoft/LCIO/archive/v${LCIOVER}.tar.gz
	tar xzf v${LCIOVER}.tar.gz
	mv LCIO-${LCIOVER} LCIO
fi
cd LCIO
mkdir build
cd build
cmake ..
make
make install
