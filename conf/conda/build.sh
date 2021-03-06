#!/bin/bash

if [ "$(uname)" == "Darwin" ]
then
    export MACOSX_DEPLOYMENT_TARGET=10.9
    export CXX=mpicxx
    export CXXFLAGS="-stdlib=libc++ ${CXXFLAGS}"
    export LDFLAGS="-Wl,-rpath,$PREFIX/lib"
fi

pip install --no-deps --no-binary :all: -r "${RECIPE_DIR}/component-requirements.txt" .
