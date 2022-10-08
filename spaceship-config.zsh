#!/bin/zsh

# Configurations for theme Spaceship

# Prompt order
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  # host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  # hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  # ruby          # Ruby section
  # elixir        # Elixir section
  # xcode         # Xcode section
  # swift         # Swift section
  # golang        # Go section
  # php           # PHP section
  # rust          # Rust section
  # haskell       # Haskell Stack section
  # julia         # Julia section
  # aws           # Amazon Web Services section
  # gcloud        # Google Cloud Platform section
  # venv          # virtualenv section
  # conda         # conda virtualenv section
  # pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember         # Ember.js section
  # kubectl       # Kubectl context section
  # terraform     # Terraform workspace section
  # docker        # Docker section
  exec_time     # Execution time
  async           # Async indicator
  line_sep      # Line break
  # battery       # Battery level and status
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_PROMPT_SEPARATE_LINE="true"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="false"
SPACESHIP_PROMPT_PREFIXES_SHOW="true"
SPACESHIP_PROMPT_SUFFIXES_SHOW="true"
SPACESHIP_PROMPT_DEFAULT_PREFIX=""
SPACESHIP_PROMPT_DEFAULT_SUFFIX=""

# Async
SPACESHIP_ASYNC_SHOW="true"
SPACESHIP_ASYNC_SHOW_COUNT="false"
SPACESHIP_ASYNC_PREFIX=" "
SPACESHIP_ASYNC_SUFFIX=""
SPACESHIP_ASYNC_SYMBOL="…"
SPACESHIP_ASYNC_COLOR="gray"

# Directory
SPACESHIP_DIR_SHOW="true"
SPACESHIP_DIR_TRUNC=3
SPACESHIP_DIR_TRUNC_PREFIX="../"
SPACESHIP_DIR_PREFIX=" in "
SPACESHIP_DIR_SUFFIX=" "
SPACESHIP_DIR_TRUNC_REPO="true"
SPACESHIP_DIR_COLOR="cyan"
SPACESHIP_DIR_LOCK_SYMBOL=" !!"
SPACESHIP_DIR_LOCK_COLOR="red"

# Time
SPACESHIP_TIME_SHOW="true"
SPACESHIP_TIME_PREFIX=""
SPACESHIP_TIME_SUFFIX=" "
SPACESHIP_TIME_COLOR="blue"
SPACESHIP_TIME_12HR="false"
SPACESHIP_TIME_FORMAT='%D %T'

# Username
SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_PREFIX=" as "
SPACESHIP_USER_SUFFIX=" "
SPACESHIP_USER_COLOR="yellow"
SPACESHIP_USER_COLOR_ROOT="red"

# Hostname
SPACESHIP_HOST_SHOW="always"
SPACESHIP_HOST_SHOW_FULL="false"
SPACESHIP_HOST_PREFIX=" @ "
SPACESHIP_HOST_SUFFIX=" "
SPACESHIP_HOST_COLOR="white"
SPACESHIP_HOST_COLOR_SSH="blue"

# Execution time
SPACESHIP_EXEC_TIME_SHOW="true"
SPACESHIP_EXEC_TIME_PREFIX=" took "
SPACESHIP_EXEC_TIME_SUFFIX=" "
SPACESHIP_EXEC_TIME_COLOR="yellow"
SPACESHIP_EXEC_TIME_ELAPSED=2

# Battery
SPACESHIP_BATTERY_SHOW="true"
SPACESHIP_BATTERY_PREFIX=" bat "
SPACESHIP_BATTERY_SUFFIX=" "
SPACESHIP_BATTERY_SYMBOL_CHARGING="+"
SPACESHIP_BATTERY_SYMBOL_DISCHARGING="-"
SPACESHIP_BATTERY_SYMBOL_FULL="."
SPACESHIP_BATTERY_THRESHOLD=30

# Jobs
SPACESHIP_JOBS_SHOW="true"
SPACESHIP_JOBS_PREFIX=""
SPACESHIP_JOBS_SUFFIX=" "
SPACESHIP_JOBS_SYMBOL="&"
SPACESHIP_JOBS_COLOR="green"
SPACESHIP_JOBS_AMOUNT_PREFIX=""
SPACESHIP_JOBS_AMOUNT_SUFFIX=""
SPACESHIP_JOBS_AMOUNT_THRESHOLD=0

# Exit code
SPACESHIP_EXIT_CODE_SHOW="true"
SPACESHIP_EXIT_CODE_PREFIX=""
SPACESHIP_EXIT_CODE_SUFFIX=" "
SPACESHIP_EXIT_CODE_SYMBOL="!"
SPACESHIP_EXIT_CODE_COLOR="red"

# Char
SPACESHIP_CHAR_PREFIX=""
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_CHAR_SYMBOL="#"
SPACESHIP_CHAR_SYMBOL_ROOT='##'
SPACESHIP_CHAR_SYMBOL_SECONDARY="$SPACESHIP_CHAR_SYMBOL"
SPACESHIP_CHAR_COLOR_SUCCESS="green"
SPACESHIP_CHAR_COLOR_FAILURE="red"
SPACESHIP_CHAR_COLOR_SECONDARY="orange"

# Git
SPACESHIP_GIT_SHOW="true"
SPACESHIP_GIT_PREFIX=" git "
SPACESHIP_GIT_SUFFIX=" "
# SPACESHIP_GIT_SYMBOL=""

# Git branch
SPACESHIP_GIT_BRANCH_SHOW="true"
SPACESHIP_GIT_BRANCH_PREFIX="on "
SPACESHIP_GIT_BRANCH_SUFFIX=" "
SPACESHIP_GIT_BRANCH_COLOR="blue"

# Git status
SPACESHIP_GIT_STATUS_SHOW="true"
SPACESHIP_GIT_STATUS_COLOR="yellow"
SPACESHIP_GIT_STATUS_PREFIX="["
SPACESHIP_GIT_STATUS_SUFFIX="]"
SPACESHIP_GIT_STATUS_UNTRACKED="U"
SPACESHIP_GIT_STATUS_DELETED="D"
SPACESHIP_GIT_STATUS_MODIFIED="M"
SPACESHIP_GIT_STATUS_RENAMED="R"
SPACESHIP_GIT_STATUS_ADDED="A"
SPACESHIP_GIT_STATUS_UNMERGED="C"
SPACESHIP_GIT_STATUS_DIVERGED="V"
SPACESHIP_GIT_STATUS_STASHED="S"
SPACESHIP_GIT_STATUS_AHEAD=">"
SPACESHIP_GIT_STATUS_BEHIND="<"

# Package
SPACESHIP_PACKAGE_SHOW="true"
SPACESHIP_PACKAGE_PREFIX=" "
SPACESHIP_PACKAGE_SUFFIX=" "
SPACESHIP_PACKAGE_SYMBOL="pkg "
SPACESHIP_PACKAGE_COLOR="red"

# Node
SPACESHIP_NODE_SHOW="true"
SPACESHIP_NODE_PREFIX=" "
SPACESHIP_NODE_SUFFIX=" "
SPACESHIP_NODE_SYMBOL="node "
SPACESHIP_NODE_DEFAULT_VERSION=""
SPACESHIP_NODE_COLOR="green"

# Ruby
SPACESHIP_RUBY_SHOW="true"
SPACESHIP_RUBY_PREFIX="ruby "
SPACESHIP_RUBY_SUFFIX=" "
SPACESHIP_RUBY_SYMBOL=""
SPACESHIP_RUBY_COLOR="red"

# Elm
SPACESHIP_ELM_SHOW="true"
SPACESHIP_ELM_PREFIX="elm "
SPACESHIP_ELM_SUFFIX=" "
SPACESHIP_ELM_SYMBOL=""
SPACESHIP_ELM_COLOR="cyan"

# Xcode
SPACESHIP_XCODE_SHOW_LOCAL="true"
SPACESHIP_XCODE_SHOW_GLOBAL="false"
SPACESHIP_XCODE_PREFIX="xcode "
SPACESHIP_XCODE_SUFFIX=" "
SPACESHIP_XCODE_SYMBOL=""
SPACESHIP_XCODE_COLOR="blue"

# Swift
SPACESHIP_SWIFT_SHOW_LOCAL="true"
SPACESHIP_SWIFT_SHOW_GLOBAL="false"
SPACESHIP_SWIFT_PREFIX="swift "
SPACESHIP_SWIFT_SUFFIX=" "
SPACESHIP_SWIFT_SYMBOL=""
SPACESHIP_SWIFT_COLOR="yellow"

# Go
SPACESHIP_GOLANG_SHOW="true"
SPACESHIP_GOLANG_PREFIX="go "
SPACESHIP_GOLANG_SUFFIX=" "
SPACESHIP_GOLANG_SYMBOL=""
SPACESHIP_GOLANG_COLOR="cyan"

# PHP
SPACESHIP_PHP_SHOW="true"
SPACESHIP_PHP_PREFIX="php "
SPACESHIP_PHP_SUFFIX=" "
SPACESHIP_PHP_SYMBOL=""
SPACESHIP_PHP_COLOR="blue"

# Haskell
SPACESHIP_HASKELL_SHOW="true"
SPACESHIP_HASKELL_PREFIX="haskell "
SPACESHIP_HASKELL_SUFFIX=" "
SPACESHIP_HASKELL_SYMBOL=""
SPACESHIP_HASKELL_COLOR="red"

# Docker
SPACESHIP_DOCKER_SHOW="true"
SPACESHIP_DOCKER_PREFIX="docker "
SPACESHIP_DOCKER_SUFFIX=" "
SPACESHIP_DOCKER_SYMBOL=""
SPACESHIP_DOCKER_COLOR="cyan"
SPACESHIP_DOCKER_VERBOSE="false"

# Pyenv
SPACESHIP_PYENV_SHOW="true"
SPACESHIP_PYENV_PREFIX="pyenv "
SPACESHIP_PYENV_SUFFIX=" "
SPACESHIP_PYENV_SYMBOL=""
SPACESHIP_PYENV_COLOR="yellow"

# Kubernetes
SPACESHIP_KUBECTL_SHOW="false"
SPACESHIP_KUBECTL_PREFIX="kubernetes "
SPACESHIP_KUBECTL_SUFFIX=" "
SPACESHIP_KUBECTL_COLOR="white"
SPACESHIP_KUBECTL_SYMBOL=""
SPACESHIP_KUBECTL_VERSION_SHOW="true"
SPACESHIP_KUBECTL_VERSION_PREFIX="kub "
SPACESHIP_KUBECTL_VERSION_SUFFIX=" "
SPACESHIP_KUBECTL_VERSION_COLOR="cyan"
