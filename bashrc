#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=vim

alias snek=python
alias xboard='xclip -selection clipboard'

# Login ponies
ponysay --q

# append to the history instead of overwriting it
shopt -s histappend

# & means, that duplicates of commands (if you run the same command
# twice) won't be reccorded in the history source:
# http://www.talug.org/events/20030709/cmdline_history.html
export HISTIGNORE="&"
# This causes commands that begin with a space to not be entered into
# the history file
export HISTCONTROL="ignorespace"
