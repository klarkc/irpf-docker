#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
mkdir -p $DIR/ProgramasRFB

xhost +local:docker
USER_ID=$(id -u) GROUP_ID=$(id -g) docker-compose "$@"
xhost -local:docker
