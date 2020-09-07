#!/bin/zsh

# Aliases

alias ,='cd ..'
alias @=ssh
alias %=pwd

alias ag=apt-get
alias agi='apt-get install'
alias agu='apt-get update'
alias agug='apt-get upgrade'

alias b=bg
alias br=brew
alias bri='brew install'
alias brl='brew list'
alias brs='brew services'
alias brsl='brew services list'
alias brsr='brew services reload'
alias brsrs='brew services restart'
alias brss='brew services start'
alias brssp='brew services stop'
alias bru='brew update'
alias brug='brew upgrade'
alias b1='bg %1'
alias b2='bg %2'
alias b3='bg %3'
alias b4='bg %4'
alias b5='bg %5'
alias b6='bg %6'
alias b7='bg %7'
alias b8='bg %8'
alias b9='bg %9'

alias c=code
alias cm=chmod
alias co=chown
alias ci=code-insiders
alias cl=curl
alias cls=clear

alias dk=docker
alias dn=dnf
alias dni='dnf install'
alias dnu='dnf update'
alias dnug='dnf upgrade'

alias f=fg
alias f1='fg %1'
alias f2='fg %2'
alias f3='fg %3'
alias f4='fg %4'
alias f5='fg %5'
alias f6='fg %6'
alias f7='fg %7'
alias f8='fg %8'
alias f9='fg %9'

alias gfu='git fetch upstream'

alias k=kubectl

alias matlab='/Applications/MATLAB_R2020a.app/bin/matlab -nojvm -nodisplay -nosplash'

alias n=node
alias nx=nginx

alias p=python
alias pe=pyenv
alias pea='pyenv activate'
alias ped='pyenv deactivate'
alias pi=pip
alias pii='pip install'
alias pi3=pip3
alias pi3i='pip3 install'
alias po=poetry
alias poi='poetry install'
alias pou='poetry update'
alias pox='poetry export -f requirements.txt > requirements.txt'
alias p3=python3

alias -g S='| sort'
alias s=jobs
alias sc=systemctl
alias scr='systemctl reload'
alias scror='systemctl reload-or-restart'
alias scrs='systemctl restart'
alias scs='systemctl start'
alias scsp='systemctl stop'
alias scst='systemctl status'
alias sclts='systemctl list-units --type=service'

alias ty=type

assign_alias_v() {
  if command -v nvim &> /dev/null; then
    alias v=nvim
  elif command -v vim &> /dev/null; then
    alias v=vim
  else
    echo "FYI, neither Vim or Neovim is installed."
  fi
}
assign_alias_v

alias wg=wget

alias yf='yarn format'

