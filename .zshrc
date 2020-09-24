#!/bin/zsh

ALIASES_FILE="$ZDOTDIR/aliases.zsh"
ZSH="$ZDOTDIR/presets/oh-my-zsh"
ZSH_THEME="spaceship"
THEME_CONFIG="$ZDOTDIR/spaceship-config.zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
UPDATE_ZSH_DAYS=21

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
ZSH_CUSTOM="$ZDOTDIR/custom"

ZSH_COMPDUMP="$ZDOTDIR/.zcompdump"

# Zsh-autosuggestions configurations
ZSH_AUTOSUGGEST_USE_ASYNC="true"
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_STRATEGY="history completion"
ZSH_AUTOSUGGEST_HISTORY_IGNORE="?(#c50,)"

# Plugins to be loaded with oh-my-zsh
plugins=(
  autojump
  git
  vi-mode
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Load autojump if installed manually
AUTOJUMP_SH="$HOME/.autojump/etc/profile.d/autojump.sh"
[[ -s "$AUTOJUMP_SH" ]] && . "$AUTOJUMP_SH"
# autoload -U compinit && compinit -u

# Path to your oh-my-zsh installation.
[[ -d "$ZSH" ]] && . "$ZSH/oh-my-zsh.sh"

# Load theme configurations
[[ -f "$THEME_CONFIG" ]] && . "$THEME_CONFIG"

# Node version manager (NVM)
if [[ -d "$NVM_SH_DIR" ]]; then
  declare -a NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)
  NODE_GLOBALS+=("node")
  NODE_GLOBALS+=("nvm")
  load_nvm () {
      [[ -s "$NVM_SH_DIR/nvm.sh" ]] && . "$NVM_SH_DIR/nvm.sh"
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
if [[ -d $PYENV_ROOT  ]]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
  fi
  eval "$(pyenv virtualenv-init -)"
fi

# poetry (Python)
[[ -d "$HOME"/.poetry ]] && export PATH="$HOME/.poetry/bin:$PATH"

# Import aliases
[[ -f "$ALIASES_FILE" ]] && . "$ALIASES_FILE"
