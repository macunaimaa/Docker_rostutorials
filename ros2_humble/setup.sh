# Run the Docker container with graphical interface on ubuntu
docker run -it --rm \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    x11-gui-app
```