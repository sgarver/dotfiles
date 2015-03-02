#!/bin/bash
sudo apt-get update;
sudo apt install -y vim vim-gtk build-essential ruby unity-tweak-tool mplayer zsh python-pip ranger htop weechat ttf-mscorefonts-installer;

sudo pip install mps-youtube;

chsh -s /bin/zsh;

git config --global user.email "stepgar@gmail.com";
git config --global user.name "Stephen Garver";
git config --global push.default simple;

git clone https://github.com/robbyrussell/oh-my-zsh.git;
mv oh-my-zsh ~/.oh-my-zsh;

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell;

ln -s ~/src/dotfiles/bin ~;
ln -s ~/src/dotfiles/.zshrc ~;
ln -s ~/src/dotfiles/.vim/ ~;
ln -s ~/src/dotfiles/.vimrc ~;
ln -s ~/src/dotfiles/lambda2.zsh-theme ~/.oh-my-zsh/themes/;

curl -sL https://deb.nodesource.com/setup | sudo bash -;
sudo apt-get install -y nodejs;

pushd /tmp
wget -E http://media.steampowered.com/client/installer/steam.deb && \
sudo dpkg -i steam.deb ; \
sudo apt-get install -yf && \


sudo add-apt-repository ppa:webupd8team/java -y;
sudo apt update;
sudo apt install -y oracle-java8-installer;

echo "Bootstrap is complete: time to rock!\n";
exit 0

