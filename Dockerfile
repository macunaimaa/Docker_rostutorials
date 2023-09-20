#ros noetic dockerfile for rostutorials
FROM ros:noetic

RUN apt-get update \
    && apt-get install -y \
    ros-$ROS_DISTRO-ros-tutorials \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update 
RUN apt-get install -y ros-$ROS_DISTRO-ros-tutorials
RUN rm -rf /var/lib/apt/lists/*

CMD ["bash"]