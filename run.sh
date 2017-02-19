# url: https://docs.docker.com/engine/tutorials/dockervolumes/
docker run                          \
    -it --rm                        \
    --volume-driver=local           \
    -v li3ds_catkin_ws:/catkin_ws   \
    rosserial                       \
    $@
