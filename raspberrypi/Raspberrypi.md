# Raspberry Pi

## Setup Wi-Fi before first start
```bash
filename="wpa_supplicant.conf"
cd /media/$USER/boot
touch $filename
echo "country=CH # Your 2-digit country code
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
network={
    scan_ssid=1
    ssid="YOUR_NETWORK_NAME"
    psk="YOUR_PASSWORD"
}" > $filename
```
## Setup ssh before first start
```bash
cd /media/$USER/boot
touch ssh
```

## Install Git
