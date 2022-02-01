# pc-setup

## Setup Wi-Fi before first start
```bash
filename="wpa_supplicant.conf"
cd /media/$USER/boot
touch $filename
echo "country=CH # Your 2-digit country code
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
network={
    ssid="YOUR_NETWORK_NAME"
    psk="YOUR_PASSWORD"
    key_mgmt=WPA-PSK
}" > $filename


## Install Git
