#!/bin/bash

# Stop services
systemctl stop nordvpn-reconnect.service
systemctl stop nordvpn.service

# Disable services
systemctl disable nordvpn-reconnect.service
systemctl disable nordvpn.service

# Remove files
rm /etc/systemd/system/nordvpn*
rm /etc/openvpn/nordvpn.pass
rm /usr/bin/nordvpn
