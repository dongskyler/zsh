#!/bin/zsh

# Start an ssh-agent in the background
print -P "%F{green}ssh-agent%f is started with %F{green}$(eval $(ssh-agent -s))%f\n"
