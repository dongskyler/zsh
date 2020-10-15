printf "Cleaning up...\n\n"

trap 'test -n "$SSH_AGENT_PID" && eval "$(ssh-agent -k)"' 0
print -P "%F{blue}%Bssh-agent%b with PID $SSH_AGENT_PID terminated%f"

print -P "\n%F{cyan}\
 ▄▀▀ ▄▀▄   █   ▄▀▄ █▄ █ ▄▀ 
 ▄██ ▀▄▀   █▄▄ ▀▄▀ █ ▀█ ▀▄█
%f"

printf "Exiting in 1 second...\n"

sleep 1
clear
exit 0
