#! /bin/bash

source ${HOME}/.env.sh

# Will load the following variables
# USERNAME: current username
# DOMAIN: domain for connecting to PC
# SSH_SERVER: ssh server for tunneling
# SSH_CONN_NAME: name of preffered ssh connection (see ~/.ssh/config)
# SSH_CONN_PORTi: ssh port for given connection (see ~/.ssh/config)
# SSHFS_PORT: port for mounting (see ~/.ssh/config)
# SCARD_ID: current smart card (for RDP)
# # TODO: automate parsing a smart card ID with grepi/sed/awk?
# MOUNT_FOLDER: folder to mount remote files


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
  
  # Add git completion to aliases
  __git_complete g __git_main
  __git_complete gc _git_checkout
  __git_complete gm __git_merge
  __git_complete gp _git_pull
fi

# Make sure you actually have those aliases defined, of course.
alias g="git"
alias gc="git checkout"
alias gm="git merge"
alias gp="git pull"

# start ssh daemon
pcscd

# scan for smart cards
alias smartcardscan="pcsc_scan"

# from NCBI confluence page
alias sshncbi="ssh -C -Y -I /usr/lib/x86_6shfs log-linux-gnu/opensc-pkcs11.so ${USERNAME}@${SSH_SERVER}"

# my inventions :)
alias sshfsmnt="sudo sshfs -o allow_other -p ${SSHFS_PORT} ${USERNAME}@localhost:/home/${USERNAME}/ ${MOUNT_FOLDER}"
alias usshfsmnt="sudo umount ${MOUNT_FOLDER}"


alias sshb="ssh -nfNT ${SSH_CONN_NAME}"

alias rd_user="rdesktop -u ${USERNAME} -d ${DOMAIN} -g 1680x1050 localhost:${SSH_CONN_PORT}"
alias rd="rdesktop -r scard:\"${SCARD_ID}\" -g 1680x1050 localhost:${SSH_CONN_PORT}"
