#!/bin/bash
# symlinks the dotfiles in this repository to their system location and backs
# them up if they already exist. If update-git is given as an argument, the
# system dotfilse are copied to the git repository instead.

DOTFILES=(bashrc inputrc vimrc gitconfig Xdefaults Xmodmaprc)

for f in ${DOTFILES[@]}; do
  if [[ $1 = "update-git" ]]; then
    cp -v ~/.$f $(dirname $0)/$f;
  else
    if [[ -e ~/.$f ]]; then
      mkdir -p ~/dotfilebackup;
      mv -v ~/.$f ~/dotfilebackup/$f;
    fi;
    ln -svf $(readlink -e $(dirname $0))/$f ~/.$f;
  fi;
done;
