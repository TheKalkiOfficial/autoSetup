#!/bin/bash

#editing software in Debian
package_apt_edit()
{
    sudo apt install -y kdenlive
    sudo apt install -y wine
    wget -O ~/Downloads/DaVinci_Resolve.zip "https://www.blackmagicdesign.com/download/link_for_linux"
    cd ~/Downloads
    unzip DaVinci_Resolve.zip
    sudo apt update
    sudo apt install libssl1.1 ocl-icd-opencl-dev fakeroot xorriso libxcb-xinerama0 libfontconfig1
    sudo ./DaVinci_Resolve_Installer.run
    rm ~/Downloads/DaVinci_Resolve.zip

}



#editing software in Arch
package_pacman_edit()
{
    sudo pacman -Syu kdenlive
    sudo pacman -Syu wine
    #yay -S davinci-resolve
    cd Downloads
    git clone https://aur.archlinux.org/davinci-resolve.git
    cd davinci-resolve
    makepkg
    sudo pacman -S libpng12 lib32-libpng12 ocl-icd openssl-1.0 opencl-driver qt5-websockets
    makepkg
    rm ~/Downloads/davinci-resolve



}


#editing software in Redhat (yum)
package_yum_edit()
{
    sudo yum install kdenlive -y
    sudo yum install wine -y
    wget https://swr.cloud.blackmagicdesign.com/DaVinciResolve/v19.1.3/DaVinci_Resolve_19.1.3_Linux.zip?verify=1738825596-xmHBNAyyHFulCkpcGA7xB5xH2oKLiHRYD8dh%2FKcyF6c%3D
    mv ~/Downloads/DaVinci_Resolve_*.zip ~/
    unzip DaVinci_Resolve_*.zip
    cd DaVinci_Resolve_*/
    chmod +x DaVinci_Resolve_Installer.run
    sudo ./DaVinci_Resolve_Installer.run
    sudo dnf install libGLU libX11 libXext libXrandr libXrender libXtst libXcursor libXi alsa-lib mesa-dri-drivers -y
}

#editing software in Redhat (dnf)
package_dnf_edit()
{
    sudo dnf install -y kdenlive
    sudo dnf install -y wine
    wget https://swr.cloud.blackmagicdesign.com/DaVinciResolve/v19.1.3/DaVinci_Resolve_19.1.3_Linux.zip?verify=1738825596-xmHBNAyyHFulCkpcGA7xB5xH2oKLiHRYD8dh%2FKcyF6c%3D
    mv ~/Downloads/DaVinci_Resolve_*.zip ~/
    unzip DaVinci_Resolve_*.zip
    cd DaVinci_Resolve_*/
    chmod +x DaVinci_Resolve_Installer.run
    sudo ./DaVinci_Resolve_Installer.run
    sudo dnf install libGLU libX11 libXext libXrandr libXrender libXtst libXcursor libXi alsa-lib mesa-dri-drivers -y
}

apt="/etc/apt"
yum="/etc/yum"
pacman="/bin/pacman"
dnf="/etc/dnf"

if [ -d "$apt" ]; then
    package_apt_edit
elif [ -e "$pacman" ]; then
    package_pacman_edit
elif [ -d "$yum" ]; then
    package_yum_edit
elif [ -d "$dnf" ]; then
    package_dnf_edit
fi
