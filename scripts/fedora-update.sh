#!/bin/bash

echo -en "==> Backup to NAS first? [y/N] "
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "==> Starting backup..."
    backup
fi

echo -e "\n==> Updating system..."
sudo dnf upgrade -y

echo -e "\n==> Updating Rust..."
rustup update

echo -e "\n==> Updating Flatpak..."
flatpak update -y

echo -e "\n==> Update complete!"
echo -en "Reboot now? [y/N] "
read -r response
[[ "$response" =~ ^[Yy]$ ]] && sudo reboot
