#!/bin/bash
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
betterlockscreen -l dim
#i3lock -c 000000 #&& sleep 60 && xset dpms force off 
