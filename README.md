# Rviz and Docker
## Goal
Start Rviz within a docker (dev-)container and display Rviz locally.
Ros1 and Rviz is not support for ubuntu:22.04 and higher, which is an issue for me.

## System
- Kubunut:22.04
- 32GB Ram

## Rviz and Docker
Run the following command in two different terminals:
```shell
sudo docker run -i -t --net=host -e DISPLAY -v /tmp/.X11-unix/ --privileged osrf/ros:noetic-desktop-full-focal
```
After that run `roscoe` in one terminal `rviz` in another.

## Rviz and Dockerfile
To build the Docker image from this Dockerfile, navigate to the directory containing the Dockerfile and run the following command:

```shell
sudo docker build -t rviz-docker .
```

This command builds a Docker image and tags it as rviz-docker.

To run the Docker container from the image you just built, use the following command:

```shell
sudo docker run -it --net=host -e DISPLAY -v /tmp/.X11-unix/ --privileged rviz-docker
```

## Rviz and Docker Devcontainer
# NOT working
```shell
source /opt/ros/noetic/setup.bash
roscore
```
```shell
source /opt/ros/noetic/setup.bash
rviz
```