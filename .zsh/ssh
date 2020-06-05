#####################
## Start ssh-agent ##
#####################

 # Ensure a ssh-agent is running so you only have to enter keys once
 if [ ! -S ~/.ssh/ssh_auth_sock ]; then
   eval `ssh-agent`
   ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
 fi
 export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
