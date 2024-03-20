#update
sudo apt update -y && sudo apt upgrade -y

#debloat mint
sudo apt purge -y xfce4-dict simple-scan hexchat pix rhythmbox thunderbird transmission-gtk libreoffice && \

#colorize and optimize terminal
wget https://averagelinuxuser.com/assets/images/posts/2019-01-18-linux-terminal-color/Linux_terminal_color.zip && unzip Linux_terminal_color.zip && sudo mv bash.bashrc /etc/bash.bashrc && sudo mv DIR_COLORS /etc/ && mv .bashrc ~/.bashrc && cd && \

#install apps in official repos
sudo apt install -y \
xfce4-clipman \
ksnip \
kdeconnect \
sshfs \
spotify-client \
smplayer \
qbittorrent \
gnome-control-center \
gnome-online-accounts \
htop \
xfce4-panel-profiles && \

#spotify repo correction
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6224F9941A8AA6D1 && \
sudo apt-get update -y && \

#update
sudo apt update -y && sudo apt upgrade -y && \

#install apps not in official repos
#timeshift-autosnap
sudo apt install -y git make
git clone https://github.com/wmutschl/timeshift-autosnap-apt.git /home/$USER/timeshift-autosnap-apt
cd /home/$USER/timeshift-autosnap-apt
yes | sudo make install && \
cd && reboot
