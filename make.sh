#!/bin/bash

if [ "$1" == "clean" ]
then
    cd build
    make clean
    make -j8
else
    cd build
    make -j8
fi

exit 0
