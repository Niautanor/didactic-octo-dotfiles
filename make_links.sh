#!/bin/bash
# symlinks the dotfiles in this repository to their system location and backs
# them up if they already exist. If update-git is given as an argument, the
# system dotfilse are copied to the git repository instead. If the first
# argument is check, the integrity of the links (whether they exist and point to
# the right file) is checked.
#
# The script works with:
# 1. files that are copied directly into the home directory
# 2. directories that are copied directly into the home directory
# 3. files or directories that are copied into a subdirectory of ~ (keep in mind
#    that the first part of the path still is going to be prefixed with a dot.
#    config/awesome/rc.lua -> .config/awesome/rc.lua

DOTFILES=(bashrc inputrc vimrc gitconfig xinitrc Xresources Xmodmaprc config/awesome urxvt)

GITDIR=$(readlink -e $(dirname $0))

for f in ${DOTFILES[@]}; do
  if [[ $1 = "check" ]]; then
    printf "["
    if [[ -L ~/.$f && $(readlink ~/.$f) = ${GITDIR}/$f ]]; then
      printf "✔";
    else
      printf "✘";
    fi;
    printf "] %s\n" $f;
  elif [[ $1 = "update-git" ]]; then
    mkdir -vp ${GITDIR}/$(dirname $f)
    cp -rvT ~/.$f ${GITDIR}/$f;
  else
    if [[ -e ~/.$f ]] && [[ ! -L ~/.$f ]]; then
      mkdir -vp ~/dotfilebackup/$(dirname $f);
      mv -v ~/.$f ~/dotfilebackup/$f;
    fi;
    ln -svT ${GITDIR}/$f ~/.$f;
  fi;
done;
