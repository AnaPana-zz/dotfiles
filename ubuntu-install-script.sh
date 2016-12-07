#! /bin/bash
sudo apt-get install vim -y

# install tmux
sudo apt-get install tmux -y
# change key bindings
# ~/.tmux.conf
# set -g prefix C-a
# unbind-key C-b
# bind-key C-a send-prefix

# git
sudo apt-get install git

# git autocomplete with aliases
# https://gist.github.com/JuggoPop/10706934

# install terminator
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator
# change python file for on_buttonpress

# install google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

# install slack client
# install idea

# remote desktop + aliases

# ssh client for work
sudo apt-get install opensc pcsc-tools
sudo apt-get install sshfs

sudo mkdir -p /mnt/ncbi

# create ~/.ssh/config with port forwarding
# setup proxy for firefox
