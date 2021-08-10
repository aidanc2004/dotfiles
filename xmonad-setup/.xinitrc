#!/bin/sh

xrdb -merge .Xresources &  # load .Xresources config
./.resolution.sh &  # set resolution to 1920x1080 (used on virtualbox)
nitrogen --set-auto --random ~/backgrounds/ &  # set background
exec xmonad  # run xmonad
