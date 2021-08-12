#!/bin/bash -e

echo "---------------------------------------------"
echo "              Kinguard setup start"
echo "---------------------------------------------"

export PATH=/usr/local/bin/:$PATH

apt update && apt -y upgrade

apt -y purge exim4 exim4-base exim4-config exim4-daemon-light

echo "kgp-pi" > /etc/mailname

echo "Kinguard: install kinguard package"
apt -y install kinguard nextcloud21 || true

echo "Kinguard: cleanup"
# Cleanup
rm  -f /etc/apt/sources.list.d/kgp-tmp.list
rm -f /etc/apt/preferences.d/kgp-pin-installer.pref
touch /etc/opi/firstboot


echo "---------------------------------------------"
echo "             Kinguard setup end"
echo "---------------------------------------------"
