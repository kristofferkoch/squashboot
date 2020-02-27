#!/bin/bash
set -x
set -e
. ./config.sh
sudo modprobe nbd
sudo qemu-nbd -c /dev/nbd0 ${DISK}
mkdir -p mnt
sudo mount /dev/nbd0p1 mnt
$@ || true
sudo umount mnt
sudo qemu-nbd -d /dev/nbd0
rm -rf mnt
