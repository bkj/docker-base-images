#!/bin/bash


mkdir /src
cd /src
git clone https://github.com/bkj/darknet
cd darknet
mkdir build
cd build
cmake ..
make all -j8
