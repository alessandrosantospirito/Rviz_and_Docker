#!/bin/bash

# Source the ROS setup.bash file
source /opt/ros/noetic/setup.bash

# Start roscore in the background
roscore &

# Wait for roscore to initialize (you can adjust the sleep duration if needed)
sleep 5

# Start rviz
rviz
