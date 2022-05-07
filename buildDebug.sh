#!/bin/sh
rm -r buid-debug
mkdir build-debug
cd build-debug
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_DEBUG_POSTFIX=-dbg ..
make -j $(nproc)
sudo make install
sudo ldconfig
