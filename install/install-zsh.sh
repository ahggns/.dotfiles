#!/bin/sh

ZDOTDIR=$CONFIG/zsh

ln -sf $DOTFILES/zsh/zshenv $HOME/.zshenv

mkdir -p $ZDOTDIR
ln -sf $DOTFILES/zsh/zshrc $ZDOTDIR/.zshrc
ln -sf $DOTFILES/zsh/zprofile $ZDOTDIR/.zprofile
