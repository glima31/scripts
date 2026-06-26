#!/bin/bash

NAS_USER="laptop"
NAS_IP="192.168.1.65"
NAS_SHARED_FOLDER="/volume1/Laptop Data Partition/"
DATA_MOUNT_POINT="/mnt/data/"

rsync -avz -O "$DATA_MOUNT_POINT" "${NAS_USER}@${NAS_IP}:${NAS_SHARED_FOLDER}" \
    --delete --info=progress2 --exclude-from="$HOME/.rsync_blacklist"