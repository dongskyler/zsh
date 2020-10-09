trap 'test -n "$SSH_AGENT_PID" && eval `ssh-agent -k`' 0
print -P "%F{blue}ssh-agent{blue} with PID %{blue}$SSH_AGENT_PID%f %F{red}terminated%f\n"
