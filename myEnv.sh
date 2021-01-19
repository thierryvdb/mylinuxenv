#!/bin/bash
##ToDO --- Create if Deb or Fedora
sudo apt update -y
sudo apt upgrade -y
sudo apt-cache search gnome-shell-extension | awk '{ print "apt install -y " $1 }' > installExtensions.sh
sudo sh installExtensions.sh
sudo apt install screenfetch mlocate iotop vlc bashtop openssh-server youtube-dl python3 python3-pip wine discord tree nmap openvpn gimp samba docker-compose qbittorrent -y
wget -c https://download.nomachine.com/download/7.0/Linux/nomachine_7.0.211_4_amd64.deb
sudo dpkg -i nomachine_7.0.211_4_amd64.deb
sudo apt -f install -y
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https- y
sudo apt update
sudo apt install code -y


#Fedora 

sudo dnf update -y
sudo dnf upgrade -y
sudo dnf install python3 python3-pip screenfetch mlocate iotop vlc bashtop openssh-server youtube-dl p wine discord tree nmap openvpn gimp samba docker-compose qbittorrent -y
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code
wget -c https://download.nomachine.com/download/7.0/Linux/nomachine_7.0.211_4_x86_64.rpm
sudo dnf install nomachine_7.0.211_4_x86_64.rpm -y
sudo dnf search gnome-shell-extension | awk '{ print "dnf install -y " $1 }' > installExtensions.sh

#Install Kite
bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"
