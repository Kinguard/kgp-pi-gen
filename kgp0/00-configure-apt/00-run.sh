#!/bin/bash -e

# Install temporary pinning and sources. New once will be added by the kinguard package

install -m 644 files/etc/apt/preferences.d/kgp-pin-installer.pref "${ROOTFS_DIR}/etc/apt/preferences.d"
install -m 644 files/etc/apt/sources.list.d/kgp-tmp.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"

on_chroot apt-key add - < files/kinguardproject.gpg.key
