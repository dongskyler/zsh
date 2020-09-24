#!/bin/zsh

export ZDOTDIR="$HOME/.zsh"

export LANG=en_US.UTF-8

export GPG_TTY=$(tty)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR=vim
else
  export EDITOR=nvim
fi

export PAGER=less

export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"
export NVM_SH_DIR=/usr/local/opt/nvm # This location may vary on different machines

# Java (OpenJDK)
export PATH="/usr/local/opt/openjdk/bin:$PATH"
# For Java compilers
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# export MANPATH="/usr/local/man:$MANPATH"

# ----------------------------------------------------------------------
# Local configuration file to override default environmental variables
LOCAL_ZSHENV="$ZDOTDIR/.zshenv.local.zsh"
[[ -f "$LOCAL_ZSHENV" ]] && . "$LOCAL_ZSHENV"

# DO NOT define environmental variables below this line
# ----------------------------------------------------------------------
