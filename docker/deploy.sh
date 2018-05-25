#!/bin/bash
echo "-------> Pushing Docker Images <--------"
docker login "$DOCKER_REPOSITORY" -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
sh docker_build.sh spring-petclinic-vets-service
