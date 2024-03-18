#update
sudo apt update -y && sudo apt upgrade -y

#normcap pypi

# install pip
sudo apt install -y python3-pip
# Install dependencies (Ubuntu/Debian)
sudo apt install -y build-essential tesseract-ocr tesseract-ocr-eng libtesseract-dev libleptonica-dev wl-clipboard
# Install normcap
pip install normcap
#fix $PATH
echo 'export PATH=$PATH:/home/doods/.local/bin' >> ~/.bashrc
source ~/.bashrc

echo '#!/bin/bash
/home/doods/.local/bin/normcap' > run_normcap.sh
chmod +x ~/run_normcap.sh

#microsoft-edge-stable-bin
## Setup
wget -O - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/microsoft.gpg

## Remove any older repository lists for Microsoft Edge if they exist
sudo rm /etc/apt/sources.list.d/microsoft-edge*.list

## Add the stable repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/edge stable main" | sudo tee /etc/apt/sources.list.d/microsoft-edge.list

## Install
sudo apt update
sudo apt install microsoft-edge-stable

#clean-up files
sudo rm -rf
~/Linux_terminal_color.zip
~/google-chrome-stable_current_amd64.deb
~/megasync-xUbuntu_22.04_amd64.deb
~/PimpMyStremio-linux.zip
~/rescuetime_current_amd64.deb
~/stremio-service_amd64.deb
~/Stremio_v4.4.165.deb
~/teamviewer_amd64.deb
~/zoom_amd64.deb
#clean-up folders
sudo rm -rf
~/timeshift-autosnap-apt && \

#maintenance
sudo apt autoremove --purge -y && sudo apt clean && sudo apt purge $(dpkg -l | awk '/^rc/ { print $2 }') && sudo journalctl --vacuum-size=50M && flatpak uninstall --unused

#update
sudo apt update -y && sudo apt upgrade -y
