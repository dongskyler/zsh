#!/bin/zsh

# Aliases

alias ag=apt-get

alias b=bg
alias br=brew
alias b1="bg %1"
alias b2="bg %2"
alias b3="bg %3"
alias b4="bg %4"
alias b5="bg %5"
alias b6="bg %6"
alias b7="bg %7"
alias b8="bg %8"
alias b9="bg %9"

alias c=code
alias ci=code-insiders
alias cls=clear

alias dk=docker

alias f=fg
alias f1="fg %1"
alias f2="fg %2"
alias f3="fg %3"
alias f4="fg %4"
alias f5="fg %5"
alias f6="fg %6"
alias f7="fg %7"
alias f8="fg %8"
alias f9="fg %9"

# gbddd() {
  # git checkout -q master && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse $branch\^{tree}) -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done'
# }
# alias gbDd='git checkout -q master && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse $branch\^{tree}) -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done'

alias gfu='git fetch upstream'

alias k=kubectl

alias matlab='/Applications/MATLAB_R2020a.app/bin/matlab -nojvm -nodisplay -nosplash'

alias n=node

alias s=jobs

alias p=python
alias pe=pyenv
alias pea="pyenv activate"
alias ped="pyenv deactivate"
alias po=poetry
alias p3=python3

alias tn=ts-node

# alias v=nvim
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

alias yf="yarn format"

