#!/bin/bash

Debian_programmer ()
{
    #VSCode Installation
        sudo apt install software-properties-common apt-transport-https
        wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
        sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
        sudo apt update
        sudo apt install code
    #slack install
        sudo apt install flatpak -y
        sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        flatpak install flathub com.slack.Slack -y
}


Arch_programmer ()
{
    #vscode_install
        sudo pacman -S visual-studio-code-bin
    #slack_install
        sudo pacman -S alsa-lib pulseaudio pulseaudio-alsa
        sudo pacman -S git
        git clone https://aur.archlinux.org/yay-git.git
        cd yay-git
        makepkg -si
        cd 
        yay -S slack-desktop
}

Redhat_yumprogrammer ()
{
    #vscode_install
        sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
        echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
        yum check-update
        sudo yum install code # or code-insiders
    #slack_install ()
        wget https://downloads.slack-edge.com/desktop-releases/linux/x64/4.41.105/slack-4.41.105-0.1.el8.x86_64.rpm
        sudo yum install ./slack-4.27.0-0.1.el7.x86_64.rpm
}
Redhat_dnfprogrammer ()
{
    #vscode_install
       sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc 
       sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
       wget https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm -O vscode.rpm
       sudo dnf check-update
       sudo dnf install vscode.rpm
    #slack
       wget https://downloads.slack-edge.com/desktop-releases/linux/x64/4.41.105/slack-4.41.105-0.1.el8.x86_64.rpm
       sudo dnf install slack-4.41.105-0.1.el8.x86_64.rpm
}
apt="/etc/apt"
yum="/etc/yum"
pacman="/bin/pacman"
dnf="/etc/dnf"

if [ -d "$apt" ]; then
Debian_programmer
elif [ -e "$pacman" ]; then
Arch_programmer
elif [ -d "$yum" ]; then
Redhat_yumprogrammer
elif [ -d "$dnf" ]; then
Redhat_dnfprogrammer
fi

