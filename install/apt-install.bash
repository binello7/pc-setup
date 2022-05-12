#!/bin/bash

apt_pkgs=(
  git
  openssh-client
  openssh-server
  terminator
  wakeonlan
)

# Check if run as root
if [ "$EUID" -ne 0 ]
  then echo "Script has to be run as root"
  exit
fi

echo "Update apt-index..."
apt update
echo ""

for pkg in ${apt_pkgs[@]}
do
  apt install -y $pkg
  echo ""
done

echo "Install of apt-packages finished"
