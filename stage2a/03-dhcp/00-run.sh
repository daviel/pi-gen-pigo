#!/bin/bash -e

install -m 644 files/wait.conf	"${ROOTFS_DIR}/etc/systemd/system/dhcpcd.service.d/wait.conf"
