printf "Cleaning up...\n"

trap 'test -n "$SSH_AGENT_PID" && eval `ssh-agent -k`' 0
print -P "%F{red}ssh-agent with PID $SSH_AGENT_PID terminated%f\n"

printf "Exiting in 1 second..."

sleep 1
clear
exit 0
