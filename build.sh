#!/bin/bash

rm -rf build
mkdir build
cd build
conan install .. --build=missing
cmake .. -DCMAKE_TOOLCHAIN_FILE=Release/generators/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build . 
./bin/minimgui