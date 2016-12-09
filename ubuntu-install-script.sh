#! /bin/bash

# add current user to sudoers
# sudo visudo
# username ALL=(ALL) NOPASSWD: ALL

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

# remote desktop
# http://serverfault.com/questions/200249/how-to-tunnel-windows-remote-desktop-through-ssh-using-a-linux-box

# ssh client for work
sudo apt-get install opensc pcsc-tools
sudo apt-get install sshfs

sudo mkdir -p /mnt/ncbi

# create ~/.ssh/config with port forwarding
# setup proxy for firefox

# install skype
# http://askubuntu.com/questions/775087/how-to-install-skype-in-ubuntu-16-04
# fix nvidia settings for skype:
# http://askubuntu.com/a/322347/400225

# Java & Scala
sudo apt-get install openjdk-8-jdk
apt-cache search jdk
javac -version

# Ammonite
sudo curl -L -o /usr/local/bin/amm https://git.io/vXVf5 && chmod +x /usr/local/bin/amm && amm

# SBT
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install sbt
# install idea

# install Krusader file manager

# firefox addons
# gtranslate
# http://lemon-juice.github.io/mouse-gestures-suite/
