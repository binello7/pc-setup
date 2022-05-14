#!/bin/bash

snap_pkgs=(
  'code --classic'
  'gimp'
  'octave'
  'vlc'
)

for ((i=0; i<${#snap_pkgs[@]}; i++))
do
  sudo snap install ${snap_pkgs[$i]}
done

echo -e "\nInstall of snap-packages finished"
