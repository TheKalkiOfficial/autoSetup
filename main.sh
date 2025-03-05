#!/bin/bash

echo "



                         ████████╗██╗░░██╗███████╗██╗░░██╗░█████╗░██╗░░░░░██╗░░██╗██╗
                         ╚══██╔══╝██║░░██║██╔════╝██║░██╔╝██╔══██╗██║░░░░░██║░██╔╝██║
                         ░░░██║░░░███████║█████╗░░█████═╝░███████║██║░░░░░█████═╝░██║
                         ░░░██║░░░██╔══██║██╔══╝░░██╔═██╗░██╔══██║██║░░░░░██╔═██╗░██║
                         ░░░██║░░░██║░░██║███████╗██║░╚██╗██║░░██║███████╗██║░╚██╗██║
                         ░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝



                                                        .
                                                         ..
                                                          :..
                                                          ',.'.
                                                           ;''',
                                                           ;'''',
                                                           ,''',,.
                                                           ;,,,,,:
                                          .                .;,,,,,:.
                                         ,,.       ,      ,,,,,,;;'
                                        .,,..    ..,.   .,,,,,,;;;,
                                       ;lc:;;,..';;;;,..,,,,;;;;;;'
                                     .oolc:;;;;;;;;,,;;,,,,;;;;;;:
                                    .kxolc:;;,,;;;,,,,,,,,,;;;;;;.
                                    OOxolc:;;,,,;,,,,,,,,,,;;;;;.
                                    Kkdlc:;;,,' .,,,,, .',,,;;,
                                    0xoc:;;,,.    .'       '.
                                    0dl:;;,,.
                                    xdl:;;,;
                                    cdc:;,:,
                                     xc:;,o'
                                     'l:;,o;
                                      'c;,cO
                                        c;,K'
                                          ;cX
                                            .d
                                              .

"
echo
sleep 1s
echo "company   :https://thekalki.net/"
echo "github    :https://github.com/TheKalkiOfficial"
echo "YouTube   :https://www.youtube.com/@TheKalkiOfficial"
echo "Instagram :https://www.instagram.com/thekalki_social/"
echo
sleep 1s


# Paths for each package manager's directory
apt="/etc/apt"
yum="/etc/yum"
pacman="/bin/pacman"
dnf="/etc/dnf"

echo "-------------------------------------------------"
echo       " Initializing Update Process"
echo "--------------------------------------------------"
# Function to update apt-based systems
apt_update()
{
    sudo apt update -y && sudo apt upgrade -y
}

# Function to update yum-based systems
yum_update()
{
    ech0 "yum package IN"
    sudo yum update -y && sudo yum upgrade -y
}

# Function to update pacman-based systems
pacman_update()
{
    sudo pacman -Syu --noconfirm
}

# Function to update dnf-based systems
dnf_update()
{
    echo "DNF package IN"
    sudo dnf update -y && sudo dnf upgrade -y
}

# Functions for setting the Basicsetup
# Function to install Libreoffice
Debian_installs ()
{
Libreoffice_install () 
{
    sudo apt install libreoffice -y
}
# Function to install vlc
vlc_install()
{
    sudo apt install vlc -y
}
# Funtion to install firefox
firefox_install()
{
    sudo apt install firefox -y
}
# Funtion to install Qbittorrent
Qbittorrent_install() 
{
    sudo apt install qbittorrent -y
}
#Function to install ProtonVPN
ProtonVPN_install() 
{
    wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.6_all.deb
    sudo dpkg -i ./protonvpn-stable-release_1.0.6_all.deb && sudo apt update
    echo "e5e03976d0980bafdf07da2f71b14fbc883c091e72b16772199742c98473002f protonvpn-stable-release_1.0.6_all.deb" | sha256sum --check -
    sudo apt install proton-vpn-gnome-desktop
}
#Function to install Anydesk
Anydesk_install()
{
    # Add the AnyDesk GPG key
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY -o /etc/apt/keyrings/keys.anydesk.com.asc
sudo chmod a+r /etc/apt/keyrings/keys.anydesk.com.asc

# Add the AnyDesk apt repository
echo "deb [signed-by=/etc/apt/keyrings/keys.anydesk.com.asc] http://deb.anydesk.com all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list > /dev/null

# Update apt caches and install the AnyDesk client
sudo apt update
sudo apt install anydesk
}
#Fuction to install python
python_install()
{
    sudo apt install python3 -y
    sudo apt install python3-pip
}
}


#Arch Distro Setup
Arch_installs ()
{
    Libreoffice_install () 
{
    sudo pacman -S jdk17-openjdk

    sudo pacman -S libreoffice-still -y
}
# Function to install vlc
vlc_install()
{
    sudo pacman -S vlc -y
}
# Funtion to install firefox
firefox_install()
{
    sudo pacman -S firefox -y
}
# Funtion to install Qbittorrent
Qbittorrent_install() 
{
    sudo pacman -S qbittorrent -y
}
ProtonVPN_install ()
{
    sudo pacman -S python-pipx
    pipx ensurepath
    pipx install protonvpn-cli    
}
AnyDesk_install ()
{
    
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    yay -S anydesk-bin
    cd 
    sudo locale-gen
    echo "LANG=en_US.UTF-8" | sudo tee /etc/locale.conf 
    export LANG=en_US.UTF-8
    source /etc/locale.conf

}
python_install ()
{
    sudo pacman -Sy python-pip -y
}
}

Redhat_yum_installs()
{
    Libreoffice_install ()
{
    sudo yum install epel-release
    sudo yum install libreoffice -y
}
# Function to install vlc
vlc_install()
{
    sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
    sudo yum install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-9.noarch.rpm
    sudo yum install vlc -y
}
# Funtion to install firefox
firefox_install()
{
    sudo yum install firefox -y
}
# Funtion to install Qbittorrent
Qbittorrent_install() 
{
    sudo yum install epel-release
    sudo yum install qbittorrent -y
}
ProtonVPN_install ()
{
    sudo dnf install https://protonvpn.com/download/protonvpn-stable-release-1.0.0-1.x86_64.rpm
    sudo yum install protonvpn-cli -y
}
Anydesk_install ()
{
    wget https://download.anydesk.com/rpm/anydesk-6.1.1-1.el7.x86_64.rpm
    sudo yum install anydesk-6.1.1-1.el7.x86_64.rpm -y
}
python_install ()
{
    sudo yum install centos-release-scl
    sudo yum install rh-python36 -y
    scl enable rh-python36 bash
}
}
Redhat_dnf_installs ()
{
    Libreoffice_install () 
{
    sudo dnf install epel-release
    sudo dnf install libreoffice -y
    cd LibreOffice_<version>/RPMS
    sudo dnf install *.rpm -y
}
# Function to install vlc
vlc_install()
{
    sudo dnf install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-9.noarch.rpm
    sudo dnf install vlc
}
# Funtion to install firefox
firefox_install()
{
    sudo dnf install firefox -y
}
# Funtion to install Qbittorrent
Qbittorrent_install()
{
    sudo dnf install qbittorrent -y
}
ProtonVPN_install ()
{
    sudo dnf install https://repo.protonvpn.com/protonvpn-stable-release-1.0.1-1.noarch.rpm
    sudo dnf install protonvpn-cli -y
}
Anydesk_install()
{
    sudo dnf install http://rpm.anydesk.com/centos/7/x86_64/Packages/anydesk-6.3.3-1.el7.x86_64.rpm -y
}
python_install()
{
    sudo dnf install python3 -y
}

}
# Check which package manager is present and update accordingly
if [ -d "$apt" ]; then
    apt_update
    echo "---------------------------------------------------------------------------"
    echo      " Initializing  Basic Tools Setup: "
    echo "---------------------------------------------------------------------------"
    echo "  1.)Libreoffice"
    echo "  2.)Vlc"
    echo "  3.)Firefox"
    echo "  4.)Qbittorrent"
    echo "  5.)Protonvpn"
    echo "  6.)Anydesk"
    echo "  7.)Python3"
    Debian_installs
    Libreoffice_install
    vlc_install
    firefox_install
    Qbittorrent_install
    ProtonVPN_install
    Anydesk_install
    python_install
elif [ -e "$pacman" ]; then
    pacman_update
    echo "--------------------------------------------------------------------------"
    echo      " Initializing  Basic Tools Setup: "
    echo "--------------------------------------------------------------------------"
    echo "  1.)Libreoffice"
    echo "  2.)Vlc"
    echo "  3.)Firefox"
    echo "  4.)Qbittorrent"
    echo "  5.)Protonvpn"
    echo "  6.)Anydesk"
    echo "  7.)Python3"
    Arch_installs
    Libreoffice_install
    python_install
    vlc_install
    firefox_install
    Qbittorrent_install
    ProtonVPN_install
    Anydesk_install
    
elif [ -d "$yum" ]; then
    yum_update
    echo "-------------------------------------------------------------------------"
    echo      " Initializing  Basic Tools Setup: "
    echo "-------------------------------------------------------------------------"
    echo "  1.)Libreoffice"
    echo "  2.)Vlc"
    echo "  3.)Firefox"
    echo "  4.)Qbittorrent"
    echo "  5.)Protonvpn"
    echo "  6.)Anydesk"
    echo "  7.)Python3"
    Redhat_yum_installs
    Libreoffice_install
    vlc_install
    firefox_install
    Qbittorrent_install
    ProtonVPN_install
    Anydesk_install
    python_install
elif [ -d "$dnf" ]; then
    dnf_update
    echo "------------------------------------------------------------------------"
    echo      " Initializing  Basic Tools Setup: "
    echo "-------------------------------------------------------------------------"
    echo "  1.)Libreoffice"
    echo "  2.)Vlc"
    echo "  3.)Firefox"
    echo "  4.)Qbittorrent"
    echo "  5.)Protonvpn"
    echo "  6.)Anydesk"
    echo "  7.)Python3"
    Redhat_dnf_installs
    Libreoffice_install
    vlc_install
    firefox_install
    Qbittorrent_install
    ProtonVPN_install
    Anydesk_install
    python_install
else
    echo "This script supports only Debian, Arch, and RedHat-based distributions."
    exit 1
fi
echo "----------------------------------------------------------------------------"
echo       " update & basic Setup completed successfully! "
echo "-----------------------------------------------------------------------------"
sleep 1s

echo    "
                         ████████╗██╗░░██╗███████╗██╗░░██╗░█████╗░██╗░░░░░██╗░░██╗██╗
                         ╚══██╔══╝██║░░██║██╔════╝██║░██╔╝██╔══██╗██║░░░░░██║░██╔╝██║
                         ░░░██║░░░███████║█████╗░░█████═╝░███████║██║░░░░░█████═╝░██║
                         ░░░██║░░░██╔══██║██╔══╝░░██╔═██╗░██╔══██║██║░░░░░██╔═██╗░██║
                         ░░░██║░░░██║░░██║███████╗██║░╚██╗██║░░██║███████╗██║░╚██╗██║
                         ░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝



                                                        .
                                                         ..
                                                          :..
                                                          ',.'.
                                                           ;''',
                                                           ;'''',
                                                           ,''',,.
                                                           ;,,,,,:
                                          .                .;,,,,,:.
                                         ,,.       ,      ,,,,,,;;'
                                        .,,..    ..,.    ,,,,,,;;;,
                                       ;lc:;;,..';;;;,..,,,,;;;;;;'
                                     .oolc:;;;;;;;;,,;;,,,,;;;;;;:
                                    .kxolc:;;,,;;;,,,,,,,,,;;;;;;.
                                    OOxolc:;;,,,;,,,,,,,,,,;;;;;.
                                    Kkdlc:;;,,' .,,,,, .',,,;;,
                                    0xoc:;;,,.    .'       '.
                                    0dl:;;,,.
                                    xdl:;;,;
                                    cdc:;,:,
                                     xc:;,o'
                                     'l:;,o;
                                      'c;,cO
                                        c;,K'
                                          ;cX
                                            .d
                                              .

        "
echo "----------------------------------------------------------------------------------------"
echo Choose the Professional to install the Profession related software
echo "----------------------------------------------------------------------------------------"
echo "1) Cyber_security (nmap, aircrack_ng, wireshark, bur_suite, angry_ip_scanner, metasploit, hashcat, john_the_ripper)"
echo
echo "2) Networking     (nmap, putty,angry_ip_scanner, vs_code, virutal_box, file_zila, xterne)"
echo
echo "3) Programmer     (VScode , Slack)"
echo
echo "4) Editor         (Kdenlive, Wine, Davinci_resolve)" 
echo
echo "5) Exit"
echo
echo "Choosing the Profession via Enter the number from 1 to 5 as above:"
read prof
while [ $prof -gt 0 ];
do
    if [ $prof -eq 1 ]; then
    ./cyber_Security.sh
    echo "System will reboot in 5 seconds"
    echo "1"
    sleep 1s
    echo "2"
    sleep 1s
    echo "3"
    sleep 1s
    echo "4"
    sleep 1s
    echo "5"
    sleep 1s
    sudo systemctl reboot
    break
    elif [ $prof -eq 2 ]; then
    ./network.sh
    echo "System will reboot in 5 seconds"
    echo "1"
    sleep 1s
    echo "2"
    sleep 1s
    echo "3"
    sleep 1s
    echo "4"
    sleep 1s
    echo "5"
    sleep 1s
    sudo systemctl reboot
    break
    elif [ $prof -eq 3 ]; then
    ./programmer.sh
    echo "System will reboot in 5 seconds"
    echo "1"
    sleep 1s
    echo "2"
    sleep 1s
    echo "3"
    sleep 1s
    echo "4"
    sleep 1s
    echo "5"
    sleep 1s
    sudo systemctl reboot
    break
    elif [ $prof -eq 4 ]; then
    ./editer.sh
    echo "System will reboot in 5 seconds"
    echo "1"
    sleep 1s
    echo "2"
    sleep 1s
    echo "3"
    sleep 1s
    echo "4"
    sleep 1s
    echo "5"
    sleep 1s
    sudo systemctl reboot
    break
    elif [ "$prof" -eq 5 ]; then
    echo "Exiting the script."
    break
    exit 0
    else
    echo "Invalid Choice! Please Enter the Choice from 1 to 5"
    read prof
fi
done


