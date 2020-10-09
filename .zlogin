#!/bin/zsh

# Start an ssh-agent in the background
print -P "%F{green}ssh-agent is started with $(eval $(ssh-agent -s))%f"

print -P "%F{green}Zlogin is loaded%f"
