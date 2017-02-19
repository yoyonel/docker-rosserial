#!/bin/bash

# Load var env for image building
source dockerbuild.env

# at directive FROM at the beginning of the temp Dockerfile
echo -e "FROM $DOCKER_BUILD_FROM\n$(cat Dockerfile)" > Dockerfile.tmp

# build Docker image
docker build    \
    $DOCKER_BUILD_OPTIONS   \
    --tag $DOCKER_BUILD_TAG \
    --file Dockerfile.tmp   \
    .

# delete temp Dockerfile
rm Dockerfile.tmp
