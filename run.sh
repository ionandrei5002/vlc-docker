#!/bin/bash

nohup docker run --rm -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e PULSE_SERVER=$XDG_RUNTIME_DIR/pulse/native \
    -v $XDG_RUNTIME_DIR/pulse:/run/user/1000/pulse \
    -v /home/andrei/Music:/home/andrei/Music \
    vlc-docker:latest &
