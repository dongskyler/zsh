#!/bin/zsh

export ZDOTDIR="$HOME/.zsh"

# Set your language environment
export LANG=en_US.UTF-8

# GPG key
export GPG_TTY=$(tty)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"
export NVM_SH_DIR=/usr/local/opt/nvm # This location may vary on different machines

export PYENV_ROOT="$HOME/.pyenv"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# export MANPATH="/usr/local/man:$MANPATH"

# ----------------------------------------------------------------------
# Local configuration file to override default environmental variables
LOCAL_ZSHENV="$ZDOTDIR/.zshenv.local.zsh"
[[ -f "$LOCAL_ZSHENV" ]] && . "$LOCAL_ZSHENV"

# DO NOT define environmental variables below this line
# ----------------------------------------------------------------------
