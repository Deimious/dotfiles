#!/bin/bash

xrdb -merge .Xresources

if [ -x /usr/bin/xfce4-power-manager ] ; then
	sleep 1
	xfce4-power-manager &
fi

while true; do
	xsetroot -name "$( date + "%F %I:%M %p" ) "
	sleep 10
done &

exec dwm
