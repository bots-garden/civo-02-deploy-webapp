#!/bin/bash
IMAGE_NAME="demo-hello-world"
HTTP_PORT=8080
#docker login -u ${DOCKER_USER} -p ${DOCKER_PWD}
docker run \
-p ${HTTP_PORT}:${HTTP_PORT} \
${IMAGE_NAME}

# Then try: curl http://localhost:8080
