#!/bin/zsh

# Aliases

# Symbols

alias ,='cd ..'
alias @=ssh
alias %=pwd

# A

alias ag=apt-get
alias agi='apt-get install'
alias agu='apt-get update'
alias agug='apt-get upgrade'

# B

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

# C

alias c=code

alias cj=clojure

alias cl=curl

alias cls=clear

alias chm=chmod
alias cho=chown

# D

alias dk=docker

alias dn=dnf
alias dni='dnf install'
alias dnu='dnf update'
alias dnug='dnf upgrade'

# F

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

# G

alias gfu='git fetch upstream'

# K

alias k=kubectl

alias k1='kill %1'
alias k2='kill %2'
alias k3='kill %3'
alias k4='kill %4'
alias k5='kill %5'
alias k6='kill %6'
alias k7='kill %7'
alias k8='kill %8'
alias k9='kill %9'

# L

alias -g L='--color=always | less -r'

alias le=less

alias lg=lein

# M

if [[ -d $MATLAB_DIR ]]; then
  alias matlab="$MATLAB_DIR/matlab -nojvm -nodisplay -nosplash"
fi

# N

alias nx=nginx

# P

alias p=python

alias pe=pyenv
alias pea='pyenv activate'
alias ped='pyenv deactivate'

alias pi=pip
alias pii='pip install'
alias pi3=pip3
alias pi3i='pip3 install'

alias pm=pacman
alias pms='pacman -S'
alias pmu='pacman -Syu'

alias po=poetry
alias poi='poetry install'
alias pou='poetry update'
alias pox='poetry export -f requirements.txt > requirements.txt'

alias p3=python3

# R

alias re=rbenv

# S

alias -g S='| sort'

alias s=jobs

alias sc=systemctl
alias scs='systemctl start'
alias scsp='systemctl stop'
alias scst='systemctl status'
alias scls='systemctl list-units --type=service'

# T

alias ty=type

# U

ud=udisksctl
udm='udisksctl mount'
udu='udisksctl unmount'

# V

if command -v nvim &> /dev/null; then
  alias v=nvim
  alias vi=nvim
elif command -v vim &> /dev/null; then
  alias v=vim
  alias vi=vim
elif command -v vi &> d/dev/null; then
  alias v=vi
  echo "Either Vim or Neovim is installed, but it is not clear which one is."
else
  echo "Neither Vim or Neovim is installed."
fi

alias vb=VBoxManage
alias vbc='VBoxManager controlvm'

vbc_acpi() {
  VBoxManage controlvm "$1" acpipowerbutton
}

vbc_off() {
  VBoxManage controlvm "$1" poweroff
}

vbc_save() {
  VBoxManage controlvm "$1" savestate
}

alias vbl='VBoxManage list'
alias vblv='VBoxManage list vms --sorted'
alias vblr='VBoxManage list runningvms --sorted'

vbs() {
  VBoxManage startvm "$1" --type headless
}

vbst() {
  VBoxManage startvm "$1" --type "$2"
}

# W

alias wg=wget

# Y

alias yc='yarn coverage'
alias yf='yarn format'

# ----------------------------------------------------------------------
# Load local configuration file, if present, to override default settings

LOCAL_ALIASES="$ZDOTDIR/aliases.local.zsh"
[[ -f "$LOCAL_ALIASES" ]] && . "$LOCAL_ALIASES"

# DO NOT define environmental variables below this line
# ----------------------------------------------------------------------
