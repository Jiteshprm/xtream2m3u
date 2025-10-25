#!/bin/bash
set -x
#Must be run as sudo
if [ $EUID -ne 0 ]
  then echo "Please run with sudo!"
  exit
fi


systemctl daemon-reload
systemctl stop xtream2m3u.service

systemctl disable xtream2m3u.service


