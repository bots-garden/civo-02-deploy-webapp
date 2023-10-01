#!/bin/bash
IMAGE_NAME="demo-hello-world"
IMAGE_TAG="0.0.0"
HTTP_PORT=8080

docker run \
-p ${HTTP_PORT}:${HTTP_PORT} \
${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}
