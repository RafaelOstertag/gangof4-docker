#!/bin/bash
set -eu

if [ $# -ne 1 ]
then
    echo "`basename $0` <VERSION>"
    exit 1
fi
VERSION=$1

pushd baseimage
docker build -t baseimage:1.0.0 .
popd

pushd baseimage-build
docker build -t baseimage-build:1.0.0 .
popd

pushd baseimage-runtime
docker build -t baseimage-runtime:1.0.0 .
popd

pushd gangof4
docker build -t gangof4:${VERSION} --build-arg VERSION=${VERSION} .
