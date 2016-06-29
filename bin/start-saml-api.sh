#!/bin/bash

export DISPLAY=:1
Xvfb :1 -screen 0 1024x768x16 2> /dev/null &

/opt/samlapi.rb 2> /dev/null
