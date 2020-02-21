#!/bin/sh

if [ "$(xdotool getwindowfocus)" -eq "$WINDOWID" ]; then
	#echo "I have the focus " $WINDOWID
	echo $WINDOWID
fi
