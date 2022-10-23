#!/bin/bash

rm -rf build
mkdir build
cd build
conan install .. -s build_type=Release
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .
./minimgui