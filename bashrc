#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=vim

# Login ponies
ponysay --q

# & means, that duplicates of commands (if you run the same command twice) won't be reccorded in the history
# source http://www.talug.org/events/20030709/cmdline_history.html
export HISTIGNORE="&"
