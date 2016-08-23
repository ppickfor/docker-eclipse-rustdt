#!/bin/bash
docker run --cap-add SYS_PTRACE --security-opt seccomp:unconfined -it --rm --name eclipse-rustdt --hostname eclipse-rustdt -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:/home/eclipse --user root ppickfor/eclipse-rustdt bash
