#!/usr/bin/env bash

docker build -t fastapi-hello-world .

docker run -p 8088:8088 --rm --name hello-world fastapi-hello-world
