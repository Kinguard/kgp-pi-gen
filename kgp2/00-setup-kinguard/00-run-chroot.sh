#!/bin/bash -e

echo "---------------------------------------------"
echo "              Kinguard setup start"
echo "---------------------------------------------"

echo "Kinguard: Current path is: [$PATH]"

export PATH=/usr/local/bin/:$PATH

echo "Kinguard: Updated path is: [$PATH]"

apt update && apt -y upgrade

echo "Kinguard: mt"
apt -y purge exim4 exim4-base exim4-config exim4-daemon-light

echo "Kinguard: install kinguard package"
apt -y install kinguard nextcloud21 || true

echo "Kinguard: cleanup"
# Cleanup
rm  -f /etc/apt/sources.list.d/kgp-tmp.list
rm -f /etc/apt/preferences.d/kgp-pin-installer.pref
touch /etc/opi/firstboot

#echo "Kinguard: running postsetup"
#/usr/share/opi-postsetup/kgp-postsetup
#echo "Kinguard: done postsetup"

echo "---------------------------------------------"
echo "             Kinguard setup end"
echo "---------------------------------------------"
