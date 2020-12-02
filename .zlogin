#!/bin/zsh

# Start an ssh-agent in the background
print -P "%F{green}Info: %Bssh-agent%b is started with PID:%f"
eval "$(ssh-agent -s)"

ssh-add -D
