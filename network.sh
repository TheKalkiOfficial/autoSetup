#!/bin/bash 
package_apt()
{
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

echo "Starting installation of Networking Secruity tools for Debian..."
echo "----------------------------------------------------------------"
echo "install_nmap
install_putty
install_angry_ip_scanner
install_vs_code
install_virutal_box
install_file_zila
install_xterne"
sleep 1s


install_nmap() {
    echo "Installing nmap..."
    sudo apt --fix-broken install -y
    sudo apt install libgtk-3-dev
    pkg-config --modversion gtk+-3.0
    sudo apt update -y
    sudo apt install -y nmap

}
install_putty() {
    echo "Installing Putty..."
    sudo apt update
    sudo apt install putty -y

}

install_angry_ip_scanner() {
    echo "Installing Angry IP Scanner..."
    wget https://github.com/angryip/ipscan/releases/download/3.9.1/ipscan_3.9.1_amd64.deb
    sudo dpkg -i ipscan_3.9.1_amd64.deb
    sudo apt --fix-broken install
    ipscan
    sleep 1s
}

install_vs_code(){
      echo "Installing Vscode..."
      sudo apt update
      sudo apt --fix-broken install
      sudo apt install software-properties-common apt-transport-https curl
      curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
      sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
      sudo apt update
      sudo apt install code

}

install_virutal_box(){
     echo "Install virtualbox.."
    sudo apt update
    sudo apt install -y wget gnupg
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo tee /etc/apt/trusted.gpg.d/oracle.asc
echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -c | awk '{print $2}') contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install virtualbox

}

install_file_zila()
{
     echo "Install filezile..."
     sudo apt --fix-broken install
     sudo apt install filezilla


}
install_xtheme(){
     echo "Install xtheme..."
     sudo apt update
     sudo apt install xterm -y
    xterm
}
echo "Installation of Network tools complete!"
echo "---------------------------------------"
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
echo "Starting installation of Networking Secruity tools for ARCH..."
echo "--------------------------------------------------------------"
echo "install_nmap
install_putty
install_angry_ip_scanner
install_vs_code
install_virutal_box
install_file_zila
install_xterne
sleep 1s
"

install_nmap() {
    echo "Installing nmap..."
    sudo apt --fix-broken install
    sudo pacman -S nmap


}
install_putty() {
    echo "Installing Putty..."
    sudo apt --fix-broken install 
    sudo pacman -S putty

}

install_angry_ip_scanner() {
    echo "Installing Angry IP Scanner..."
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/ipscan.git
    cd ipscan
    makepkg -si
    cd 

}

install_vs_code(){
      echo "Installing Vscode..."
      sudo apt --fix-broken install
      yay -S visual-studio-code-bin
      sudo pacman -S code

}

install_virutal_box(){
     echo "Install virtualbox.."
     sudo apt --fix-broken install
     sudo pacman -S virtualbox
     sudo pacman -S virtualbox-host-modules-arch

}

install_file_zila()
{
     echo "Install filezile..."
     sudo apt --fix-broken install
     sudo pacman -S filezilla

}
install_xtheme(){
     echo "Install xtheme..."
     sudo apt --fix-broken install
     yay -S xtheme

}

echo "Installation of Network tools complete!"
echo "---------------------------------------"
}


package_dnf() {
    echo "RedHat/CentOS-based  cybersecurity tool..."
    echo "


                                                                          ██████╗░███████╗██████╗░  ██╗░░██╗░█████╗░████████╗
                                                                          ██╔══██╗██╔════╝██╔══██╗  ██║░░██║██╔══██╗╚══██╔══╝
                                                                          ██████╔╝█████╗░░██║░░██║  ███████║███████║░░░██║░░░
                                                                          ██╔══██╗██╔══╝░░██║░░██║  ██╔══██║██╔══██║░░░██║░░░
                                                                          ██║░░██║███████╗██████╔╝  ██║░░██║██║░░██║░░░██║░░░
                                                                          ╚═╝░░╚═╝╚══════╝╚═════╝░  ╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░

       "
echo "Starting installation of Networking Secruity tools for REDHAT..."
echo "----------------------------------------------------------------"
echo "install_nmap
install_putty
install_angry_ip_scanner
install_vs_code
install_virutal_box
install_file_zila
install_xterne
sleep 1s
"

install_nmap() {
    echo "Installing nmap..."
    sudo dnf install nmap
    sudo apt --fix-broken install


}
install_putty() {
    echo "Installing Putty..."
    sudo apt --fix-broken install
    sudo dnf install putty


}

install_angry_ip_scanner() {
    echo "Installing Angry IP Scanner..."
    wget https://github.com/angryip/ipscan/releases/download/3.9.1/ipscan-3.9.1-1.x86_64.rpm
    sudo dnf install ./ipscan-3.9.1-1.x86_64.rpm


}

install_vs_code(){
      echo "Installing Vscode..."
     sudo apt --fix-broken install
     sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
     sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1" > /etc/yum.repos.d/vscode.repo'
     sudo dnf install code


}

install_virutal_box(){
     echo "Install virtualbox.."
     sudo apt --fix-broken install
     sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
     sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
     sudo dnf install VirtualBox
     wget https://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo -O /etc/yum.repos.d/virtualbox.repo
     sudo dnf install VirtualBox


}

install_file_zila()
{
    echo "Install filezile..."
    sudo apt --fix-broken install
    sudo dnf install filezilla
}
install_xtheme(){
     echo "Install xtheme..."
     sudo apt --fix-broken install

     sudo dnf install gnome-tweaks
}
echo "Installation of Network tools complete!"
echo "---------------------------------------"
}



exit_code=0
if [ -d /etc/apt ]; then

    package_apt
    install_nmap
    install_putty
    install_angry_ip_scanner
    install_vs_code
    install_virutal_box
    install_file_zila
    install_xterne
    exit_code=1


elif [ -e /bin/pacman ]; then
    package_pacman
    install_nmap
    install_putty
    install_angry_ip_scanner
    install_vs_code
    install_virutal_box
    install_file_zila
    install_xterne
    exit_code=2


elif [ -d /etc/dnf ]; then
    package_dnf
    install_nmap
    install_putty
    install_angry_ip_scanner
    install_vs_code
    install_virutal_box
    install_file_zila
    install_xterne
    exit_code=3


else
    echo "Unsupported system."
    exit_code=4
fi

echo "Exit code: $exit_code"
echo "OS Network completed successfully!"
echo "----------------------------------"
