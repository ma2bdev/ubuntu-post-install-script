#!/bin/bash

# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please run sudo ./install.sh" 2>&1
  exit 1
fi

username=$(id -u -n 1000)
builddir=$(pwd)

# Update packages list and update system
apt update
apt upgrade -y

# Install nala
apt install nala -y

# Install Essentials
nala install git wget curl unrar unzip neofetch -y

# Configure Gnome-Tweaks
nala install gnome-shell-extensions gnome-tweaks chrome-gnome-shell -y


#Replace Nautilus with Nemo
apt purge nautilus gnome-shell-extension-desktop-icons -y
nala install nemo -y
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true
gsettings set org.nemo.desktop use-desktop-grid true
touch /etc/xdg/autostart/nemo-autostart.desktop
echo "[Desktop Entry]
Type=Application
Name=Files
Exec=nemo-desktop
OnlyShowIn=GNOME;Unity;
X-Ubuntu-Gettext-Domain=nemo" | tee /etc/xdg/autostart/nemo-autostart.desktop

# Installing fonts
cd $builddir 
nala install fonts-font-awesome -y
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip -d /home/$username/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
unzip Meslo.zip -d /home/$username/.fonts
mv dotfonts/fontawesome/otfs/*.otf /home/$username/.fonts/
chown $username:$username /home/$username/.fonts/*

# Reloading Font
fc-cache -vf
# Removing zip Files
rm ./FiraCode.zip ./Meslo.zip

#Install Grub Custumizer
add-apt-repository -y ppa:danielrichter2007/grub-customizer
nala update
nala install grub-customizer -y

# Install Firefox PPA
snap remove firefox
add-apt-repository -y ppa:mozillateam/ppa 
echo "
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
" | tee /etc/apt/preferences.d/mozilla-firefox

echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox
nala update
nala install firefox -y

# Install brave-browser
nala install apt-transport-https curl -y
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list
nala update
nala install brave-browser -y

#Install MS Edge
nala install software-properties-common -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"
nala update
nala install microsoft-edge-stable -y

#Install ZSH
nala install zsh -y

# Installing Other Essential Programs 
nala install audacity blueman aptitude blender bpytop calibre fonts-noto-color-emoji cheese chromium-browser conky-all dconf-editor filezilla flameshot g++ gedit gimp gparted gnome-text-editor kdenlive mainline mpv mtools notepadqq okular obs-studio rclone remmina shotwell stacer vlc -y



