#! /bin/bash

## Debian update and install default packages
apt update
apt dist-upgrade -y

apt install vim htop net-tools dnsutils resolvconf -y

exit 0