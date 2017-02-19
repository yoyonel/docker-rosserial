DOCKER_BUILD_FROM=ros:nvidia
DOCKER_BUILD_OPTIONS="--rm --no-cache"
DOCKER_BUILD_TAG=rosserial

echo "FROM $DOCKER_BUILD_FROM\n$(cat Dockerfile)" > Dockerfile.tmp

docker build    \
    $DOCKER_BUILD_OPTIONS   \
    --tag $DOCKER_BUILD_TAG \
    --file Dockerfile.tmp   \
    .

rm Dockerfile.tmp
