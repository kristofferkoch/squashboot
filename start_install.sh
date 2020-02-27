#!/bin/bash
set -e
set -x
. ./config.sh
kvm ${MACHINE} -drive file=${DISK},if=virtio,index=0 -cdrom ${CDROM}

