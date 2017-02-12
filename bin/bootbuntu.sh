#!/bin/bash
sudo apt update && sudo apt upgrade
sudo apt install nvidia-367
sudo apt-get install -y --no-install-recommends linux-image-extra-$(uname -r) vim git zsh htop build-essential wget apt-transport-https ca-certificates curl software-properties-common

# docker
curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -
apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D
sudo add-apt-repository "deb https://apt.dockerproject.org/repo/ ubuntu-$(lsb_release -cs) main"
sudo apt update && sudo apt -y install docker-engine

# node
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt install -y nodejs
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# pia
cd Downloads
wget https://installers.privateinternetaccess.com/download/pia-v66-installer-linux.tar.gz
sha256sum pia-v66-installer-linux.tar.gz 
tar zxvf pia-v66-installer-linux.tar.gz
sh ./pia-v66-installer-linux.sh 

echo All done..

