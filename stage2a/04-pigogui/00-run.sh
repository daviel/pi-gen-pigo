#!/bin/bash -e

install -m 644 files/pigogui.service	"${ROOTFS_DIR}/etc/systemd/system/pigogui.service"
