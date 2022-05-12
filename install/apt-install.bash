#!/bin/bash

apt_pkgs=(
  openssh-client
  openssh-server
  terminator
  wakeonlan
)

echo "Update apt-index..."
sudo apt update

for pkg in ${apt_pkgs[@]}
do
  sudo apt install -y $pkg
done

echo -e "\nInstall of apt-packages finished"
