#!/bin/bash -e

git clone https://github.com/daviel/pigogui.git /opt/pigo/pigogui

mkdir -p /opt/pigo/games

systemctl daemon-reload

systemctl enable pigogui.service
