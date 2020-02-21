#!/bin/sh

echo "bin/set-dual-monitor.sh" >> startup.txt

xrandr --auto --output HDMI-1 --mode 1920x1080 --right-of DVI-D-1

xrandr --auto --output VGA-1 --mode 1024x768

