#!/bin/bash

./build.sh

VERSION_FILE="VERSION"

VERSION=$(cat $VERSION_FILE)
VERSION=$((VERSION + 1))
echo ${VERSION} > ${VERSION_FILE}

echo "Please manually copy the created .box file to somewhere it is usable."