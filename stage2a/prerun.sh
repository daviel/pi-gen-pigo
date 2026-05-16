#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ]; then
	copy_previous
fi

on_chroot << 'EOF'
CONFIG_DIR="/opt/pigo/pigo-config"

apt-get update
apt-get install -y git device-tree-compiler

mkdir -p /opt/pigo

if [ ! -d "$CONFIG_DIR" ]; then
	git clone "https://github.com/daviel/pigo-config" "$CONFIG_DIR"
else
	cd "$CONFIG_DIR"
	git reset --hard
	git pull
fi

cd "$CONFIG_DIR"
grep -v '^sudo su' install.sh | bash -s
EOF
