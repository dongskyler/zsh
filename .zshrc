#!/bin/zsh

# Set your language environment
export LANG=en_US.UTF-8

# export MANPATH="/usr/local/man:$MANPATH"
ZDOTDIR="$HOME/.zsh"
ZSH_COMPDUMP="$ZDOTDIR/.zcompdump"
ALIASES_FILE="$ZDOTDIR/aliases.zsh"
export ZSH="$ZDOTDIR/presets/oh-my-zsh"
export ZSH_THEME="spaceship"
THEME_CONFIG="$ZDOTDIR/spaceship-config.zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
export DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=21

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
export ZSH_CUSTOM="$ZDOTDIR/custom"

# Zsh-autosuggestions configurations
ZSH_AUTOSUGGEST_USE_ASYNC="true"
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_STRATEGY="history completion"
ZSH_AUTOSUGGEST_HISTORY_IGNORE="?(#c50,)"

# Which plugins would you like to load?
plugins=(
  autojump
  git
  vi-mode
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

export NVM_DIR="$HOME/.nvm"
export NVM_SH_DIR=/usr/local/opt/nvm # This location may vary on different machines

export PYENV_ROOT="$HOME/.pyenv"

# ----------------------------------------------------------------------
# Local configuration file to override default environmental variables
LOCAL_BYPASS_CONFIG="$ZDOTFILE/local-config.zsh"
[[ -f "$LOCAL_BYPASS_CONFIG" ]] && . "$LOCAL_BYPASS_CONFIG"

# DO NOT define environmental variables below this line
# ----------------------------------------------------------------------

# Path to your oh-my-zsh installation.
if [[ -d "$ZSH" ]]; then
  . "$ZSH/oh-my-zsh.sh"
else
  echo "Error: oh-my-zsh does not exist."
fi

# Load theme configurations
[[ -f "$THEME_CONFIG" ]] && . "$THEME_CONFIG"

# Regenerate .zcompdump at most once a day
autoload -Uz compinit
if [[ -n "$ZDOTDIR"/.zcompdump(#qN.mh+24) ]]; then
  compinit -d "$ZSH_COMPDUMP"
else
  compinit -C
fi

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# GPG key
export GPG_TTY=$(tty)

# Node version manager (NVM)
if command -v nvm &> /dev/null; then
  declare -a NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)
  NODE_GLOBALS+=("node")
  NODE_GLOBALS+=("nvm")
  load_nvm () {
      [ -s "$NVM_SH_DIR/nvm.sh" ] && . "$NVM_SH_DIR/nvm.sh"
  }
  for cmd in "${NODE_GLOBALS[@]}"; do
      eval "${cmd}(){ unset -f ${NODE_GLOBALS}; load_nvm; ${cmd} \$@ }"
  done
fi

# rbenv (Ruby)
if command -v rbenv &> /dev/null; then
  if which rbenv > /dev/null; then
    eval "$(rbenv init -)";
  fi
fi

# pyenv (Python)
if command -v pyenv &> /dev/null; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
  fi
  eval "$(pyenv virtualenv-init -)"
fi

# poetry (Python)
if command -v poetry &> /dev/null; then
  export PATH="$HOME/.poetry/bin:$PATH"
fi

# Import aliases
[[ -f "$ALIASES_FILE" ]] && . "$ALIASES_FILE"

