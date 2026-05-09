#!/bin/bash

cp rsync_blacklist.txt "$HOME/.rsync_blacklist"

for script in scripts/*.sh; do
    name=$(basename "$script" .sh)
    install -m 755 "$script" "$HOME/.local/bin/$name"
    echo "Installed: $name"
done
