#!/bin/bash

    # -v ros_indigo_ros_lib:/catkin_ws/ros_lib \
docker run \
    -it \
    --rm \
    ros/rosserial:indigo \
    /bin/bash
