" initialize vim-plug
call plug#begin()
Plug 'arcticicestudio/nord-vim' " nord theme
Plug 'darfink/vim-plist' " plist syntax
Plug 'github/copilot.vim' " github copilot
Plug 'vim-airline/vim-airline'  " status bar
Plug 'vim-airline/vim-airline-themes' " status bar themes
Plug 'scrooloose/nerdtree' " file tree
Plug 'Xuyuanp/nerdtree-git-plugin' " git status in nerdtree
call plug#end()

set tabstop=4
set shiftwidth=4
set expandtab

set nocompatible
if (has("termguicolors"))
  set termguicolors
endif
set termguicolors

syntax enable
colorscheme nord
