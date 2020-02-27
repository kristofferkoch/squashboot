#!/bin/bash
set -x
set -e
. ./config.sh
qemu-img create -f qcow2 ${DISK} 16G

