#!/bin/bash

# Check if run as root
if [ "$EUID" -ne 0 ]
  then echo "Script has to be run as root"
  exit
fi

echo "Apply some settings..."
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

# Install apt-packages
apt_install=apt-install.bash
echo "Running $apt_install:"
echo "-------------------------"
./$apt_install