#!/usr/bin/env bash

xrdb -merge ~/.Xresources &
xset r rate 200 30 

exec i3

#xrdb -merge .Xresources 

#echo ".xinitrc" >> startup.txt

#xmodmap .xmodmap

#exec bin/set-dual-monitor.sh
