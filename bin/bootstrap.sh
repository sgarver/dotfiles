#!/bin/bash
sudo apt-get update;
sudo apt install ubuntu-sdk git vim vim-gtk build-essential ruby unity-tweak-tool mplayer nvidia-331-updates zsh python-pip ranger htop weechat ttf-mscorefonts-installer;

sudo pip install mps-youtube;

chsh -s /bin/zsh;

sudo update-alternatives --config x-cursor-theme;

sudo sed -i 's/f07746/95AEC7/g' /usr/share/themes/Ambiance/gtk-3.0/gtk-main.css
sudo sed -i 's/f07746/95AEC7/g' /usr/share/themes/Ambiance/gtk-3.0/settings.ini
sudo sed -i 's/f07746/95AEC7/g' /usr/share/themes/Ambiance/gtk-2.0/gtkrc
#sudo convert \( glyphicons-halflings.png -alpha extract \) -background "#95AEC7" -alpha shape /usr/share/unity/:

gsettings set org.gnome.desktop.interface document-font-name 'Sans 11'
gsettings set org.gnome.desktop.interface font-name 'Ubuntu 10'
gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono 10'
gsettings set org.gnome.nautilus.desktop font 'Ubuntu 10'

git config --global user.email "stepgar@gmail.com";
git config --global user.name "Stephen Garver";
git config --global push.default simple;

git clone https://github.com/robbyrussell/oh-my-zsh.git;
mv oh-my-zsh ~/.oh-my-zsh;

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell;

ln -s ../bin ~/bin;
ln -s ../.zshrc ~/;
ln -s ../.vim ~/;
ln -s ../.vimrc ~/;
ln -s ../lambda2.zsh-theme ~/.oh-my-zsh/plugins/;

curl -sL https://deb.nodesource.com/setup | sudo bash -;
sudo apt-get install -y nodejs;

sudo add-apt-repository ppa:nilarimogard/webupd8;

sudo apt-get update;
sudo apt-get install caffeine-plus;

pushd /tmp
wget -E http://media.steampowered.com/client/installer/steam.deb && \
sudo dpkg -i steam.deb ; \
sudo apt-get install -yf && \

echo "COMPLETE: Your system will now reboot!\n";
sleep 3;

sudo reboot
exit 0

