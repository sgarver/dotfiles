#!/bin/bash
echo "Warning: Your system will reboot once this script has completed!\n";
sleep 3;

sudo apt-get update;
sudo apt install ubuntu-sdk git vim vim-gtk build-essential unity-tweak-tool mplayer nvidia-331-updates zsh python-pip ranger htop;

sudo pip install mps-youtube;

git config --global user.email "stepgar@gmail.com";
git config --global user.name "Stephen Garver";
git config --global push.default simple;

git clone https://github.com/robbyrussell/oh-my-zsh.git;
mv oh-my-zsh ~/.oh-my-zsh;

cp .oh-my-zsh/templates/zshrc.zsh-template .zshrc;
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="lambda"/g' .zshrc;
sed -i 's/plugins=(git)/plugins=(git debian)/g' .zshrc;

chsh -s /bin/zsh;

curl -sL https://deb.nodesource.com/setup | sudo bash -;
sudo apt-get install -y nodejs;

sudo add-apt-repository ppa:webupd8team/popcorntime;

sudo apt-get update;
sudo apt-get install popcorn-time;

sudo reboot
exit 0




