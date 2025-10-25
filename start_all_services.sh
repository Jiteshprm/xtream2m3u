#!/bin/bash
set -x
#Must be run as sudo
if [ $EUID -ne 0 ]
  then echo "Please run with sudo!"
  exit
fi


cp xtream2m3u.service /etc/systemd/system

systemctl daemon-reload
systemctl enable xtream2m3u.service
systemctl start xtream2m3u.service

#journalctl -u xtream2m3u.service -f
