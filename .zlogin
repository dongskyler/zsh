#!/bin/zsh

# Start an ssh-agent in the background
echo 'Start an ssh-agent in the background'
eval "$(ssh-agent -s)"
