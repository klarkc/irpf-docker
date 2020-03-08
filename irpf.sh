#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
mkdir -p $DIR/ProgramasRFB

xhost +local:docker
docker run --rm \
    -e DISPLAY \
    -e _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on' \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $DIR/ProgramasRFB:/home/irpf/ProgramasRFB \
    klarkc/irpf-docker
xhost -local:docker
