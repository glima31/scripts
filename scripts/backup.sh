#!/bin/bash

NAS_USER="laptop"
NAS_IP="192.168.1.65"
NAS_SHARED_FOLDER="/volume1/Laptop Data Partition/"
SRC_DIR="/home/user/Documents/"

rsync -avz -O "$SRC_DIR" "${NAS_USER}@${NAS_IP}:${NAS_SHARED_FOLDER}" \
    --delete --info=progress2 --exclude-from="$HOME/.rsync_blacklist"