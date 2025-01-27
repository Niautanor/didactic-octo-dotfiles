#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=vim

alias snek=python
alias xboard='xclip -selection clipboard'

# settings to make fcitx work reliably
export INPUT_METHOD=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# append to the history instead of overwriting it
shopt -s histappend

# & means, that duplicates of commands (if you run the same command
# twice) won't be reccorded in the history source:
# http://www.talug.org/events/20030709/cmdline_history.html
export HISTIGNORE="&"
# This causes commands that begin with a space to not be entered into
# the history file
export HISTCONTROL="ignorespace"

# stolen from
# https://superuser.com/questions/611538/is-there-a-way-to-display-a-countdown-or-stopwatch-timer-in-a-terminal#611582
function countdown(){
   date1=$((`date +%s` + $1));
   while [ "$date1" -ge `date +%s` ]; do
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}
function stopwatch(){
  date1=`date +%s`;
   while true; do
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
    sleep 0.1
   done
}

camelcase() {
    perl -pe 's#(_|^)(.)#\u$2#g'
}

alias vijournal='vim ~/Dokumente/Journal/$(date +%Y/%V)/journal.txt'

export PYTHON_BASIC_REPL=1
