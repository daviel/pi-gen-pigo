#!/bin/bash -e

install -m 644 files/fbcp.service	"${ROOTFS_DIR}/etc/systemd/system/fbcp.service"
install -m 644 files/lightdisplay.service	"${ROOTFS_DIR}/etc/systemd/system/lightdisplay.service"