#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

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

# powerdown specific stuff
xset +dpms
xset dpms 0 0 300

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
exec awesome
#exec i3
