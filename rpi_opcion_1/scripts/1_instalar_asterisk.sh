#!/bin/bash
set -e
apt update && apt install -y build-essential wget libssl-dev libncurses-dev libnewt-dev libxml2-dev libsqlite3-dev libjansson-dev uuid-dev subversion git curl libedit-dev
cd /usr/src
wget https://downloads.asterisk.org/pub/telephony/asterisk/asterisk-22-current.tar.gz
tar -xzf asterisk-22-current.tar.gz
cd asterisk-22*/
./configure
make menuselect.makeopts
make -j1
make install
make samples
make config
ldconfig
groupadd asterisk || true
useradd -r -d /var/lib/asterisk -g asterisk asterisk || true
usermod -aG audio,dialout asterisk
chown -R asterisk:asterisk /etc/asterisk
chown -R asterisk:asterisk /var/lib/asterisk
chown -R asterisk:asterisk /var/log/asterisk
chown -R asterisk:asterisk /var/spool/asterisk
chown -R asterisk:asterisk /usr/lib/asterisk
systemctl start asterisk
systemctl enable asterisk
echo 'Instalacion completada'
