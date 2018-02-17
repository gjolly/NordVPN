# NordVPN
NordVPN configuration using OpenVPN

## Features

NordVPN doesn't provide any client app for Linux systems. I wrote three little scripts which install a nordvpn systemd service using OpenVPN protocol and ensure that everything runs well.

## Requirement

Follow [this](https://nordvpn.com/tutorials/linux/openvpn/) tutorial till step 8.

This has been tested on a Debian system.

## Installation

```bash
git clone https://github.com/gjolly/NordVPN.git /tmp
chmod +x /tmp/NordVPN/install.sh
sudo /tmp/NordVPN/install.sh NORDVPN_USER NORDVPN_PASSWORD
rm -r /tmp/NordVPN
```
