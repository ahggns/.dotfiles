#!/usr/bin/env zsh

# +----+
# | ls |
# +----+
alias ls='gls --color=auto'
alias l='ls -l'
alias ll='ls -lahF'
alias lls='ls -lahFtr'
alias la='ls -A'
alias lc='ls -CF'

# +----+
# | cp |
# +----+
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

# +--------+
# | Neovim |
# +--------+
alias vim='nvim'
alias vi='nvim'
alias svim='sudoedit'
alias dvim="vim -u /usr/share/nvim/archlinux.vim" # nvim with default config
alias nvimc='rm -I $VIMCONFIG/swap/*'             # clean nvim swap file
alias nvimcu='rm -I $VIMCONFIG/undo/*'            # clean the vim undo
alias nviml='nvim -w $VIMCONFIG/vimlog "$@"'      # log the keystrokes 
alias nvimd='nvim --noplugin -u NONE'             # launch nvim without any plugin or config (nvim debug)
alias nvimfr='nvim +e /tmp/scratchpad.md -c "set spelllang=fr"'
alias lvim='\vim -c "set nowrap|syntax off"'        # fast vim for big files / big oneliner
