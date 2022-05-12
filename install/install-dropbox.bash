#!/bin/bash

# Updated: 12/05/22, working

echo "Downloading Dropbox"
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

echo "Installing Dropbox"
~/.dropbox-dist/dropboxd
