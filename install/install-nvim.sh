#!/bin/bash

VIMCONFIG=$CONFIG/nvim

mkdir -p $VIMCONFIG
ln -sf $DOTFILES/nvim/init.vim $VIMCONFIG/init.vim

mkdir -p $VIMCONFIG/autoload
ln -sf $DOTFILES/nvim/vim-plug/plug.vim $VIMCONFIG/autoload/plug.vim

# Install vim-plug plugins
nvim +PlugInstall +qall

# Run ":Copilot setup"
nvim +Copilot setup +qall
