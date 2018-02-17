#!/bin/bash

# Saving login
read -p "username: " username
read -p "password: " -s password
echo $username > /etc/openvpn/nordvpn.pass
echo $password >> /etc/openvpn/nordvpn.pass
chmod 600 /etc/openvpn/nordvpn.pass

# Copy files
cp *.service /etc/systemd/system/
cp nordvpn /usr/bin/

# Configure systemd
systemctl enable nordvpn.service
systemctl enable nordvpn-reconnect.service

# Start services
systemctl start nordvpn.service
systemctl start nordvpn-reconnect.service

printf "\nInstallation complete"
