#!/bin/zsh

export LANG=en_US.UTF-8

GPG_TTY=$(tty)
export GPG_TTY

export EDITOR=nvim

export PAGER=less

export ZDOTDIR="$HOME/.zsh"

export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"

export PYENV_ROOT="$HOME/.pyenv"
if [[ -d "$PYENV_ROOT" ]]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
fi
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

export POETRY_DIR="$HOME/.poetry"
if [[ -d "$POETRY_DIR" ]]; then
  export PATH="$POETRY_DIR/bin:$PATH"
fi

export MATLAB_DIR="$HOME/.matlab"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# export MANPATH="/usr/local/man:$MANPATH"

# ----------------------------------------------------------------------
# Load local configuration file, if present, to override default settings

load_local_zshenv () {
  LOCAL_ZSHENV="$ZDOTDIR/.zshenv.local.zsh"

  if [[ -f "$LOCAL_ZSHENV" ]]; then
    . "$LOCAL_ZSHENV"
  fi
}

load_local_zshenv && unset -f load_local_zshenv

# No more code below this line
# ----------------------------------------------------------------------
