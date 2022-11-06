#!/bin/sh
BUILD_DIR="_build"

echo "build: $1"

currentwd=$(pwd)
coincidencias=$(ls $currentwd | grep $1)
numcoincidencias=$(wc -w <<< $coincidencias)

if [ $numcoincidencias -eq 1 ]
then
    echo "build para: $coincidencias"
    workdir="$currentwd/$coincidencias"
    builddir="$workdir/$BUILD_DIR"
    rm -r $builddir
    echo "sphinx-build -b html $workdir $builddir"
    sphinx-build -b html $workdir $builddir
else
    echo "$coincidencias"
fi