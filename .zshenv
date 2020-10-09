#!/bin/zsh

export ZDOTDIR="$HOME/.zsh"

export LANG=en_US.UTF-8

export GPG_TTY=$(tty)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR=nvim
else
  export EDITOR=nvim
fi

export PAGER=less

export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Java (OpenJDK)
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# For Java compilers
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

# Node version manager
export NVM_DIR="$HOME/.nvm"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# MATLAB
export MATLAB_DIR="$HOME/.matlab"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# export MANPATH="/usr/local/man:$MANPATH"

print -P "%F{green}Zshenv%f is loaded"

# ----------------------------------------------------------------------
# Load local configuration file, if present, to override default settings

LOCAL_ZSHENV="$ZDOTDIR/.zshenv.local.zsh"

if [[ -f "$LOCAL_ZSHENV" ]]; then
  . "$LOCAL_ZSHENV"
  print -P "%F{green}Local zshenv%f is loaded"
else
  print -P "%F{yellow}No local zshenv%f is found"
fi

# DO NOT define environmental variables below this line
# ----------------------------------------------------------------------
