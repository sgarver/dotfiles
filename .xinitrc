#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xrandr --output HDMI-0 --right-of DVI-I-1 --rotate left

while true; do
   xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &

exec dwm

