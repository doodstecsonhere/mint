#stremio
wget https://dl.strem.io/shell-linux/v4.4.165/Stremio_v4.4.165.deb
sudo apt install -y ~/Stremio_v4.4.165.deb
#pimpmystremio-bin
wget https://github.com/sungshon/PimpMyStremio/releases/download/v1.2.2/PimpMyStremio-linux.zip
unzip PimpMyStremio-linux.zip
#stremio-service-bin
wget https://dl.strem.io/stremio-service/v0.1.12/stremio-service_amd64.deb
sudo apt install -y ~/stremio-service_amd64.deb
#rescuetime2
wget https://www.rescuetime.com/installers/rescuetime_current_amd64.deb
sudo apt install -y ~/rescuetime_current_amd64.deb
#stacer-bin
sudo add-aspt-repository ppa:oguzhaninan/stacer
sudo apt-get update
sudo apt-get install -y stacer
#floorp-bin
curl -fsSL https://ppa.ablaze.one/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list 'https://ppa.ablaze.one/Floorp.list'
sudo apt update -y && \
sudo apt install -y floorp
#google-chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install -y ~/google-chrome-stable_current_amd64.deb && \
#megasync-bin
wget https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb && sudo apt install -y "$PWD/megasync-xUbuntu_22.04_amd64.deb"
#microsoft-edge-stable-bin
## Setup
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-stable.list'
sudo rm microsoft.gpg
## Install
sudo apt update -y
sudo apt install -y microsoft-edge-stable
#teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb && sudo apt install -y ~/teamviewer_amd64.deb
#zoom
wget https://cdn.zoom.us/prod/5.17.11.3835/zoom_amd64.deb && sudo apt install -y ./zoom_amd64.deb

#normcap pypi

# install pip
sudo apt install -y pip
# Install dependencies (Ubuntu/Debian)
sudo apt install -y build-essential tesseract-ocr tesseract-ocr-eng libtesseract-dev libleptonica-dev wl-clipboard
# Install normcap
pip install normcap
#fix $PATH
echo 'export PATH=$PATH:/home/doods/.local/bin' >> ~/.bashrc
source ~/.bashrc

## create a small script that runs NormCap and link the shortcut to that script instead.
## Here’s a simple example of what the script could look like:

## #!/bin/bash
## /home/doods/.local/bin/normcap

## Save this script in your home directory as run_normcap.sh, make it executable with the command
chmod +x ~/run_normcap.sh
## and then use the full path to the script when creating the keyboard shortcut (./run_normcap.sh).


#tgpt-bin
curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash -s /usr/local/bin && \

sudo apt install -y -f
#install Bavarder
flatpak install -y flathub io.github.Bavarder.Bavarder

#clean-up
sudo rm -rf
~/Linux_terminal_color.zip
~/google-chrome-stable_current_amd64.deb
~/megasync-xUbuntu_22.04_amd64.deb
~/microsoft-edge-stable_122.0.2365.80-1_amd64.deb
~/PimpMyStremio-linux.zip
~/rescuetime_current_amd64.deb
~/stremio-service_amd64.deb
~/Stremio_v4.4.165.deb
~/teamviewer_amd64.deb
~/zoom_amd64.deb
~/timeshift-autosnap-apt && \

sudo apt autoremove --purge -y && sudo apt clean && sudo apt purge $(dpkg -l | awk '/^rc/ { print $2 }') && sudo journalctl --vacuum-size=50M && flatpak uninstall --unused

#open app not in whisker menu
rescuetime
