#!/bin/bash
echo "-------> Pushing Docker Images <--------"
docker login "$DOCKER_REPOSITORY" -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"

bash docker/docker_build.sh spring-petclinic-tracing-server
bash docker/docker_build.sh spring-petclinic-api-gateway
bash docker/docker_build.sh spring-petclinic-discovery-server
bash docker/docker_build.sh spring-petclinic-config-server
bash docker/docker_build.sh spring-petclinic-visits-service
bash docker/docker_build.sh spring-petclinic-vets-service
bash docker/docker_build.sh spring-petclinic-customers-service
bash docker/docker_build.sh spring-petclinic-admin-server
