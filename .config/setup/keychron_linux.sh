#!/usr/bin/env sh

# replace <value> below with the one that worked for you in the previous step (0, 1 or 2)
# example: echo "options hid_apple fnmode=2 | sudo tee /etc/modprobe.d/hid_apple.conf"
# this will erase any pre-existing contents from /etc/modprobe.d/hid_apple.conf
echo "options hid_apple fnmode=0" | sudo tee /etc/modprobe.d/hid_apple.conf

# the "-k all" part is not always needed, but it's better to do that for all kernels anyway
sudo update-initramfs -u -k all
echo "reboot required"

# read: https://gist.github.com/andrebrait/961cefe730f4a2c41f57911e6195e444
# read: https://github.com/kurgol/keychron/blob/master/k6.md
