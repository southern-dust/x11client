#!/bin/bash

# we need to tell GUI applications which display to use
export DISPLAY=xserver:0
export USER=xclient

# we also need to use the proper magic cookie for authorization
xauth merge /Xauthority/xserver.xauth

exec "$@"
