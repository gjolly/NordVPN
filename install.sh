#!/bin/bash

# Copy files
cp *.service /etc/systemd/system/
cp nordvpn /usr/bin/

# Configure systemd
systemctl enable nordvpn.service
systemctl enable nordvpn-reconnect.service

echo Installation complete
