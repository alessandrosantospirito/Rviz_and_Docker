# Use the official ROS Noetic image as the base image
FROM osrf/ros:noetic-desktop-full-focal

# Set environment variables for GUI
ENV DISPLAY :0
ENV QT_X11_NO_MITSHM 1

# Install necessary packages
RUN apt-get update && apt-get install -y \
    ros-noetic-rviz \
    && rm -rf /var/lib/apt/lists/*

# Copy the entry point script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the entry point to run the script
ENTRYPOINT ["/entrypoint.sh"]
