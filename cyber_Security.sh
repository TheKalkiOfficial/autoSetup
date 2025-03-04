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
                                          .                .;,,,,,.
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
echo "website      : https://thekalki.net/ "
echo "github.com   : https://github.com/naveenvarmaofficial?tab=repositories"
sleep 1s



package_apt() {
    echo "Cyber Security Tools for debian"
    echo "
                                                                                 ██████╗░███████╗██████╗░██╗░█████╗░███╗░░██╗
                                                                                 ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗████╗░██║
                                                                                 ██║░░██║█████╗░░██████╦╝██║███████║██╔██╗██║
                                                                                 ██║░░██║██╔══╝░░██╔══██╗██║██╔══██║██║╚████║
                                                                                 ██████╔╝███████╗██████╦╝██║██║░░██║██║░╚███║
                                                                                 ╚═════╝░╚══════╝╚═════╝░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝
        "


sleep 1s
echo "Website      : https://thekalki.net/"
echo "GitHub       : https://github.com/naveenvarmaofficial?tab=repositories"
sleep 1s

echo "Starting installation of Cyber Secruity tools for Debian..."
echo "-----------------------------------------------------------"
echo "
sleep 1s
install_nmap
install_aircrack_ng
install_wireshark
install_bur_suite
install_angry_ip_scanner
install_metasploit
install_hashcat
install_john_the_ripper"
sleep 1s
install_nmap() {
    echo "Installing nmap..."
    sudo apt update -y
    sudo apt --fix-broken install -y
    sudo apt install -y nmap
}
install_bur_suite()
{
    echo "Installing burpsuite"
     wget "https://portswigger-cdn.net/burp/releases/download?product=community&version=2025.1.2&type=Linux" -O burpsuite_community.sh
     chmod +x burpsuite_community.sh
     ./burpsuite_community.sh

}

# Function to install aircrack-ng
install_aircrack_ng() {
    echo "Installing aircrack-ng..."
    sudo apt --fix-broken install -y
    sudo apt install -y aircrack-ng
}

# Function to install Wireshark
install_wireshark() {
    echo "Installing Wireshark..."
    sudo apt --fix-broken install -y
    sudo apt install -y wireshark
}




# Function to install clear
install_angry_ip_scanner() {
    echo "Installing Angry IP Scanner..."
    wget https://github.com/angryip/ipscan/releases/download/3.9.1/ipscan_3.9.1_amd64.deb
    sudo dpkg -i ipscan_3.9.1_amd64.deb
    sudo apt --fix-broken install
    ipscan
    sleep 1s
}

# Function to install Metasploit
install_metasploit() {
    echo "Installing Metasploit..."
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
    sleep 1s
}

# Function to install Hashcat
install_hashcat() {
    echo "Installing Hashcat..."
    sudo apt update
    sudo apt install -y build-essential checkinstall git libssl-dev zlib1g-dev
    sudo apt install hashcat
    git clone https://github.com/hashcat/hashcat.git
    cd hashcat
    make
    sudo apt install make
    hashcat --version
    sleep 1s
}

# Function to install John the Ripper
install_john_the_ripper() {
    echo "Installing John the Ripper..."
    sudo apt-get install john -y
    john   
}

echo "Installation of Cyber  security tools complete!"
echo "-----------------------------------------------"
}



package_pacman() {
    echo "Arch-based Cyber Security Tools ...."
    echo "




                                                                                 ░█████╗░██████╗░░█████╗░██╗░░██╗
                                                                                 ██╔══██╗██╔══██╗██╔══██╗██║░░██║
                                                                                 ███████║██████╔╝██║░░╚═╝███████║
                                                                                 ██╔══██║██╔══██╗██║░░██╗██╔══██║
                                                                                 ██║░░██║██║░░██║╚█████╔╝██║░░██║
                                                                                 ╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝

          "
sleep  1s
echo "website      : https://thekalki.net/ "
echo "github.com   : https://github.com/naveenvarmaofficial?tab=repositories"
sleep 1s

echo "Starting installation of cy ber  security tools for  Arch..."
echo "------------------------------------------------------------"
echo"
install_nmap
install_aircrack_ng
install_wireshark
install_bur_suite
install_angry_ip_scanner
install_metasploit
install_hashcat
install_john_the_ripper"
sleep 1s
install_nmap() {
    echo "Installing nmap..."
    sudo apt --fix-broken install -y
    pacman -S sudo git
    sudo pacman -Syu
    sudo pacman -S nmap

}

install_aircrack_ng() {
    echo "Installing aircrack-ng..."
    sudo pacman -S aircrack-ng
}

install_wireshark() {
    echo "Installing Wireshark..."
    sudo pacman -S wireshark-gtk
    sudo pacman -S wireshark-qt

}

install_bur_suite() {
    echo "Installing Burp Suite..."
    yay -S burpsuite
    java -jar burpsuite_community_vX.X.X.jar

}

install_angry_ip_scanner() {
    echo "Installing Angry IP Scanner..."
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/ipscan.git
    cd ipscan
    makepkg -si
    cd 
    echo
    ls
    sleep 1s
}

install_metasploit() {
    echo "Installing Metasploit..."
    yay -S metasploit
    echo
    ls
    sleep 1s
}

install_hashcat() {
    echo "Installing Hashcat..."
    sudo pacman -S hashcat
    echo
    ls
    sleep 1s
}

install_john_the_ripper() {
    echo "Installing John the Ripper..."
    sudo pacman -S john
    echo
    ls
    sleep 1s
}

echo "Installation of cyber security tools compalete!"
echo "-----------------------------------------------"
}


package_yum() {
    echo "RedHat/CentOS-based  cybersecurity tool..."
    echo "


                                                                                      ██████╗░███████╗██████╗░  ██╗░░██╗░█████╗░████████╗
                                                                                      ██╔══██╗██╔════╝██╔══██╗  ██║░░██║██╔══██╗╚══██╔══╝
                                                                                      ██████╔╝█████╗░░██║░░██║  ███████║███████║░░░██║░░░
                                                                                      ██╔══██╗██╔══╝░░██║░░██║  ██╔══██║██╔══██║░░░██║░░░
                                                                                      ██║░░██║███████╗██████╔╝  ██║░░██║██║░░██║░░░██║░░░
                                                                                      ╚═╝░░╚═╝╚══════╝╚═════╝░  ╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░

       "

sleep  1s
echo "website      : https://thekalki.net/ "
echo "github.com   : https://github.com/naveenvarmaofficial?tab=repositories"
sleep 1s

echo "Starting installation of cyber security toolsin Redhat..."
echo "---------------------------------------------------------"
echo "
install_nmap
install_aircrack_ng
install_wireshark
install_bur_suite
install_angry_ip_scanner
install_metasploit
install_hashcat
install_john_the_ripper"
sleep 1s
install_nmap() {
    echo "Installing nmap..."
    sudo apt --fix-broken install -y
    sudo dnf check-update
    sudo dnf upgrade
    sudo dnf update

}

install_aircrack_ng() {
    echo "Installing aircrack-ng..."
    sudo dnf install nmap
}

install_wireshark() {
    echo "Installing Wireshark..."
    sudo dnf install wireshark
    sudo usermod -aG wireshark $(whoami)

}

install_bur_suite() {
    echo "Installing Burp Suite..."
    wget "https://portswigger.net/burp/releases/download?product=community&version=&type=Linux" -O burpsuite.sh
    chmod +x burpsuite.sh
    ./burpsuite.sh
    echo 
    ls
    sleep 1s
}

install_angry_ip_scanner() {
    echo "Installing Angry IP Scanner..."
    wget https://github.com/angryip/ipscan/releases/download/3.7.5/ipscan-3.7.5-setup.tar.xz
    tar -xvf ipscan-3.7.5-setup.tar.xz
    sudo dnf install java-1.8.0-openjdk
    echo
     ls
    sleep 1s
}

install_metasploit() {
    echo "Installing Metasploit..."
    curl -o metasploit-latest-linux-x64-installer.run https://downloads.metasploit.com/data/releases/metasploit-latest-linux-x64-installer.run
    chmod +x metasploit-latest-linux-x64-installer.run
    sudo ./metasploit-latest-linux-x64-installer.run
    sudo msfdb init
   echo
   ls
   sleep 1s
}

install_hashcat() {
    echo "Installing Hashcat..."
    sudo dnf install -y gcc-c++ make automake libtool
    sudo dnf install -y nvidia-driver nvidia-settings
    sudo dnf install -y ocl-icd
    wget https://github.com/hashcat/hashcat/releases/download/v6.2.5/hashcat-6.2.5-linux-x86_64.tar.gz
    tar -xvzf hashcat-6.2.5-linux-x86_64.tar.gz
    echo
    ls
    sleep 1s
}

install_john_the_ripper() {
    echo "Installing John the Ripper..."
    sudo dnf install -y gcc make automake libtool openssl-devel git
    git clone https://github.com/openwall/john.git
    cd john
    cd src
    makepkg -si    
    echo
    ls
    sleep 1s
}
echo "Cybersecurity Tools Installation Completed!"
echo "-------------------------------------------" 
}


exit_code=0
if [ -d /etc/apt ]; then

    package_apt
    install_nmap
    install_aircrack_ng
    install_wireshark
    install_bur_suite
    install_angry_ip_scanner
    install_metasploit
    install_hashcat
    install_john_the_ripper
    exit_code=1


elif [ -e /bin/pacman ]; then
    package_pacman
    install_nmap
    install_aircrack_ng
    install_wireshark
    install_bur_suite
    install_angry_ip_scanner
    install_metasploit
    install_hashcat
    install_john_the_ripper
    exit_code=2


elif [ -d /etc/dnf ]; then
    package_yum
    install_nmap
    install_aircrack_ng
    install_wireshark
    install_bur_suite
    install_angry_ip_scanner
    install_metasploit
    install_hashcat
    install_john_the_ripper
    exit_code=3


else
    echo "Unsupported system."
    exit_code=4
fi

echo "Exit code: $exit_code"
echo "OS update and upgrade completed successfully!"
echo "---------------------------------------------"

