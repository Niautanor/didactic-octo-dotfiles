#!/bin/sh
# xinitrc -> X startup script (client side)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# set keyboard layout
setxkbmap -layout de -variant nodeadkeys

# load key rebindings (Capslock -> Exc)
xmodmap ~/.Xmodmaprc

# disable console beep
xset -b

# change colour temperature depending on time of day
# alternative description "make the screen red"
redshift &

# powerdown specific stuff
xset +dpms
xset dpms 0 0 300

exec awesome
