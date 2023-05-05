#!/bin/bash -e

wget https://github.com/daviel/fbcp-ili9341-pigo/releases/download/v1.0-pigo/fbcp-ili9341 -O /usr/bin/fbcp

chmod +x /usr/bin/fbcp

systemctl daemon-reload

systemctl enable lightdisplay.service

systemctl enable fbcp.service