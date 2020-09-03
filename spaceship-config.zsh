#!/bin/zsh

# Configurations for theme Spaceship

# Prompt order
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  # hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  # elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  # rust          # Rust section
  haskell       # Haskell Stack section
  # julia         # Julia section
  docker        # Docker section
  # aws           # Amazon Web Services section
  # gcloud        # Google Cloud Platform section
  # venv          # virtualenv section
  # conda         # conda virtualenv section
  pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember         # Ember.js section
  kubectl       # Kubectl context section
  # terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  # battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_PROMPT_SEPARATE_LINE="true"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="false"
SPACESHIP_PROMPT_PREFIXES_SHOW="true"
SPACESHIP_PROMPT_SUFFIXES_SHOW="true"
SPACESHIP_PROMPT_DEFAULT_PREFIX="via "
SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "

# Directory
SPACESHIP_DIR_SHOW="true"
SPACESHIP_DIR_PREFIX="in "
SPACESHIP_DIR_TRUNC=5
SPACESHIP_DIR_TRUNC_PREFIX="…/"
SPACESHIP_DIR_TRUNC_REPO="true"
SPACESHIP_DIR_COLOR="cyan"
SPACESHIP_DIR_LOCK_COLOR="red"

# Git
SPACESHIP_GIT_SHOW="true"
SPACESHIP_GIT_PREFIX="on "
SPACESHIP_GIT_BRANCH_SHOW="true"
SPACESHIP_GIT_BRANCH_SUFFIX=""
SPACESHIP_GIT_BRANCH_COLOR="blue"
SPACESHIP_GIT_STATUS_SHOW="true"
SPACESHIP_GIT_STATUS_COLOR="yellow"

# Time
SPACESHIP_TIME_SHOW="true"
SPACESHIP_TIME_PREFIX=""
SPACESHIP_TIME_COLOR="blue"
SPACESHIP_TIME_12HR="false"

# Username
SPACESHIP_USER_SHOW="true"
SPACESHIP_USER_PREFIX="as "
SPACESHIP_USER_SHOW="true"

# Hostname
SPACESHIP_HOST_SHOW="true"
SPACESHIP_HOST_SHOW_FULL="false"
SPACESHIP_HOST_PREFIX="@ "
SPACESHIP_HOST_COLOR="white"
SPACESHIP_HOST_COLOR_SSH="blue"

# Execution time
SPACESHIP_EXEC_TIME_COLOR="yellow"

#  Mode
SPACESHIP_VI_MODE_SHOW="true"

# Jobs
SPACESHIP_JOBS_SHOW="true"
SPACESHIP_JOBS_PREFIX=""
SPACESHIP_JOBS_SUFFIX=""
SPACESHIP_JOBS_SYMBOL="🍀 "
SPACESHIP_JOBS_COLOR="green"
SPACESHIP_JOBS_AMOUNT_PREFIX=""
SPACESHIP_JOBS_AMOUNT_SUFFIX=" "
SPACESHIP_JOBS_AMOUNT_THRESHOLD=1

# Exit code
SPACESHIP_EXIT_CODE_SHOW="true"
SPACESHIP_EXIT_CODE_PREFIX=""
SPACESHIP_EXIT_CODE_SUFFIX=""
SPACESHIP_EXIT_CODE_SYMBOL="😱 "
SPACESHIP_EXIT_CODE_COLOR="red"

# Char
SPACESHIP_CHAR_PREFIX=" "
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_CHAR_SYMBOL="➜"
SPACESHIP_CHAR_SYMBOL_ROOT="★"
SPACESHIP_CHAR_SYMBOL_SECONDARY="$SPACESHIP_CHAR_SYMBOL"

# Package
SPACESHIP_PACKAGE_SHOW="true"
SPACESHIP_PACKAGE_PREFIX="is "
SPACESHIP_PACKAGE_COLOR="red"

# Go
SPACESHIP_GOLANG_SYMBOL="⚽️"

