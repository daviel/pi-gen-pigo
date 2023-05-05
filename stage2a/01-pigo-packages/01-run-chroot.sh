#!/bin/bash -e

pip3 install libevdev

apt update
apt install libraspberrypi-dev/oldstable libraspberrypi0/oldstable raspberrypi-bootloader/oldstable wiringpi/oldstable -y --allow-downgrades

apt remove userconf-pi triggerhappy -y

systemctl disable getty@tty1

apt autoremove -y
apt clean