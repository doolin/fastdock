#!/usr/bin/env bash

LOCAL_FOLDER="/Users/daviddoolin/src/fastdock"
CONTAINER_NAME="hello-world"

if docker ps -a | grep -qw $CONTAINER_NAME; then
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME # not needed when container is removed with --rm
fi

docker build -t $CONTAINER_NAME .
docker run \
  -d \
  -v $LOCAL_FOLDER:/app \
  -p 8088:8088 \
  --rm \
  --name $CONTAINER_NAME \
  $CONTAINER_NAME
