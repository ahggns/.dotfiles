#!/bin/sh

mkdir -p $CONFIG/git
ln -sf $DOTFILES/git/gitconfig $CONFIG/git/config.template

if [ ! -f $CONFIG/git/config ]; then
  echo "[include]" > $CONFIG/git/config
  echo "  path = $CONFIG/git/config.template" >> $CONFIG/git/config
fi
