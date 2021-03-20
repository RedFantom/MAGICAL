#!/bin/bash
git submodule --init --recursive
cd limbo
cmake .
make -j4
cd ..
cd wnlib
make clean
make all
cd ..
cd anaroute
./clean.sh
python2 setup.py build
cd ..
cd ConstGen
./clean.sh
python2 setup.py build
cd ..
cd flow/cpp/magical_flow
python2 setup.py build
cd ../../..
cd IdeaPlaceEx
./clean.sh
python2 setup.py build
