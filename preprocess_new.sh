#! /bin/bash
apt-get update
apt-get dist-upgrade -y
mkdir /var/run/fail2ban
apt-get install sudo ufw fail2ban nano -y
adduser ether1node
usermod -aG sudo ether1node
adduser ether1node systemd-journal
