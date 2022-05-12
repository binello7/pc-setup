#!/bin/bash

apt_pkgs=(
  openssh-client
  openssh-server
  terminator
  wakeonlan
)

echo "Add new repositories to sources.list..."
echo -e '\ndeb https://qgis.org/ubuntu bionic main' | sudo tee -a /etc/apt/sources.list
sudo add-apt-repository ppa:linuxuprising/shutter
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'

echo "Add repositories keys..."
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

echo "Update apt-index..."
sudo apt update

for pkg in ${apt_pkgs[@]}
do
  sudo apt install -y $pkg
done

echo -e "\nInstall of apt-packages finished"
