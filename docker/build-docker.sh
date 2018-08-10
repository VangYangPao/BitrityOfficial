#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-bitritypay/bitrityd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/bitrityd docker/bin/
cp $BUILD_DIR/src/bitrity-cli docker/bin/
cp $BUILD_DIR/src/bitrity-tx docker/bin/
strip docker/bin/bitrityd
strip docker/bin/bitrity-cli
strip docker/bin/bitrity-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
