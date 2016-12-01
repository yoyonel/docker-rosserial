#/bin/bash

VOLUME_NAME=ros-indigo-ros_lib

echo "Création du volume docker $VOLUME_NAME"
docker volume create --name $VOLUME_NAME
