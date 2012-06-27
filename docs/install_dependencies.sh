#!/bin/sh

#SLIM_VERSION="master"
SLIM_VERSION="release-1.6.3"
SLIM_EXTRAS_VERSION="master"

# Create directories
rm -rf ext/
mkdir -p ext
mkdir -p ext/js

# Slim is a PHP 5 Micro Framework
cd ext/
git clone git://github.com/codeguy/Slim.git
cd Slim/
git checkout ${SLIM_VERSION}
cd ../../

# Slim-Extras
cd ext/
git clone git://github.com/codeguy/Slim-Extras.git
cd Slim-Extras/
git checkout ${SLIM_EXTRAS_VERSION}
cd ../../
