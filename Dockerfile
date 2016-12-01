#FROM ros:indigo
FROM ros:indigo-ros-core

RUN apt-get update && \
    apt-get install -y \
    ros-indigo-rosserial-arduino ros-indigo-rosserial

# Build our catkin workspace from the /catkin_ws directory
WORKDIR /catkin_ws

#
COPY ./scripts/generate_ros_lib.sh /catkin_ws

# Lancement du script de generation du répertoire 'ros_lib'
RUN /ros_entrypoint.sh ./generate_ros_lib.sh

