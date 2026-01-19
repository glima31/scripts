#!/bin/bash

RSYNC_DEST="$(hostname)@192.168.1.65:/volume1/Backup - $(hostname)/"
rsync -avz -O "$HOME/" "$RSYNC_DEST" --delete --info=progress2 --exclude-from="$HOME/.rsync_blacklist"
