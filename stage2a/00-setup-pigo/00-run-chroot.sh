#!/bin/bash -e

apt update
apt install git -y
git clone https://github.com/daviel/pigo-config /tmp/pigo-config
/tmp/pigo-config/install.sh