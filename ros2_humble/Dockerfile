# Use the official ROS 2 base image as a starting point
FROM osrf/ros:humble-desktop

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install some basic utilities
RUN apt-get update && apt-get install -y \
    wget \
    git \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Setup sources and keys for ROS 2
RUN apt-get update && apt-get install -y curl gnupg2 lsb-release \
    && curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add - \
    && sh -c 'echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list' \
    && apt-get update

# Source ROS 2 setup script by default
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

# Set up the entrypoint
ENTRYPOINT ["/bin/bash"]

#run on windows with:
#docker run -it --rm -e DISPLAY=your_ip:0.0 docker_img_name
#no meu pc:
#172.24.176.1