#!/bin/bash
hostname=$(hostname)
docker run --cap-add SYS_PTRACE --security-opt seccomp:unconfined -it --rm --name eclipse-rustdt --hostname ${hostname} -e DISPLAY -e HOME -e DBUS_SESSION_BUS_ADDRESS -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:$HOME -v /opt/rust:/opt/rust -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro --user ${UID}:${GID} ppickfor/eclipse-rustdt eclipse
