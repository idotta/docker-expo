#!/usr/bin/env sh

CONTAINER_NAME=idotta/expo
HOST_DIR="$1"

docker run \
       --privileged \
       -v $HOST_DIR:/data \
       -e NODE_ENV=production \
       -it
       $CONTAINER_NAME