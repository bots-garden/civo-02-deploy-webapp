#!/bin/bash
IMAGE_NAME="demo-hello-world"
IMAGE_TAG="0.0.0"
docker login -u ${DOCKER_USER} -p ${DOCKER_PWD}
docker tag ${IMAGE_NAME} ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}
docker push ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}


