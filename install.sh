#!/bin/bash

# Saving login
echo $1 > /etc/openvpn/nordvpn.pass
echo $2 >> /etc/openvpn/nordvpn.pass

# Copy files
cp *.service /etc/systemd/system/
cp nordvpn /usr/bin/

# Configure systemd
systemctl enable nordvpn.service
systemctl enable nordvpn-reconnect.service

echo Installation complete
