#!/bin/bash

cp rsync_blacklist.txt "$HOME/.rsync_blacklist"

# with no args, install all scripts. otherwise, install only the ones matching the args
if [[ $# -eq 0 ]]; then
    scripts=(scripts/*.sh)
else 
    scripts=()
    for name in "$@"; do
        script="scripts/$name.sh"
        if [[ -f "$script" ]]; then
            scripts+=("$script")
        else
            echo "No such script: $name" >&2
            exit 1
        fi
    done
fi

echo "Installing: ${scripts[*]##scripts/}"
read -rp "Proceed? [Y/n] " response
[[ "$response" =~ ^[Nn]$ ]] && echo "Aborted." && exit 1

for script in "${scripts[@]}"; do
    name=$(basename "$script" .sh)
    install -m 755 "$script" "$HOME/.local/bin/$name"
    echo "Installed: $name"
done
