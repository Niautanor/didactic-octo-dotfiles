#!/bin/bash
# symlinks the dotfiles in this repository to their system location and backs
# them up if they already exist. If update-git is given as an argument, the
# system dotfilse are copied to the git repository instead.
#
# The script works with:
# 1. files that are copied directly into the home directory
# 2. directories that are copied directly into the home directory
# 3. files or directories that are copied into a subdirectory of ~ (keep in mind
#    that the first part of the path still is going to be prefixed with a dot.
#    config/awesome/rc.lua -> .config/awesome/rc.lua

DOTFILES=(bashrc inputrc vimrc gitconfig xinitrc Xresources Xmodmaprc config/awesome urxvt)

GITDIR=$(dirname $0)

for f in ${DOTFILES[@]}; do
  if [[ $1 = "update-git" ]]; then
    mkdir -vp ${GITDIR}/$(dirname $f)
    cp -rvT ~/.$f ${GITDIR}/$f;
  else
    if [[ -e ~/.$f ]] && [[ ! -L ~/.$f ]]; then
      mkdir -vp ~/dotfilebackup/$(dirname $f);
      mv -v ~/.$f ~/dotfilebackup/$f;
    fi;
    ln -svT $(readlink -e ${GITDIR})/$f ~/.$f;
  fi;
done;
