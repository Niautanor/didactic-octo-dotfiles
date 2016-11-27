#!/bin/sh
# xinitrc -> X startup script (client side)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# compsiting (i.e. transparent windows and drop shadows)
compton &

# set keyboard layout
setxkbmap -layout de -variant nodeadkeys

# load key rebindings (Capslock -> Exc)
xmodmap ~/.Xmodmaprc

# disable console beep
xset -b

# load Xresources (mainly urxvt configuration)
xrdb -merge ~/.Xresources

# change colour temperature depending on time of day
# alternative description "make the screen red"
redshift &

xset s off
xset -dpms

# see urxvtd(1)
# basically this means that I can use urxvtd to keep all my terminals in the
# same process for alleged faster startup times ¯\_(ツ)_/¯
urxvtd -q -f

exec awesome
