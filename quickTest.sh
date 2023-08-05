#!/bin/bash
set -e
source /opt/emsdk/emsdk_env.sh
cmake -B builds -DCLOSURE=1 -DCMAKE_MAKE_PROGRAM=make -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ 
cmake --build builds -- VERBOSE=1
cp builds/ammo.js /PROJ/DEV/webmonkeyengine/jme3-web/build/generated/teavm/js/physics/ -f