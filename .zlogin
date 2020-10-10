#!/bin/zsh

# Start an ssh-agent in the background
print -P "%F{green}ssh-agent is started%f with PID:"
eval $(ssh-agent -s)

print -P "%F{green}Zlogin is loaded%f"
