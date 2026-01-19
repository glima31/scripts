#!/bin/bash

cp rsync_blacklist.txt "$HOME/.rsync_blacklist"
install -m 755 scripts/nas-backup.sh "$HOME/.local/bin/nas-backup"
install -m 755 scripts/system-update.sh "$HOME/.local/bin/system-update"
