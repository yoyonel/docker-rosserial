#FROM 172.20.250.99:5000/ros:indigo-ros-core
#FROM ros:nvidia

# IGN PROXY
# Il faut le gérer dans le FROM (héritage) de l'image
# RUN echo 'Acquire::http::Proxy "http://proxy.ign.fr:3128";' >> /etc/apt/apt.conf.d

RUN apt-get update && \
    apt-get install -y \
    ros-indigo-rosserial-arduino \
    ros-indigo-rosserial

# Build our catkin workspace from the /catkin_ws directory
WORKDIR /catkin_ws

#
COPY generate_ros_lib.sh /root
RUN chmod +x /root/generate_ros_lib.sh

# url: https://docs.docker.com/engine/reference/builder/
#
# Lancement du script de generation du répertoire 'ros_lib'
#RUN /ros_entrypoint.sh ./generate_ros_lib.sh
#ENTRYPOINT ["/bin/bash", "-c", "source /ros_entrypoint.sh && ./generate_ros_lib.sh"]
#ENTRYPOINT ["/ros_entrypoint.sh", "./generate_ros_lib.sh"]
CMD ["/ros_entrypoint.sh", "/root/generate_ros_lib.sh"]
