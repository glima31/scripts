#!/bin/bash

echo -en "==> Backup to NAS first? [y/N] "
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "==> Starting backup..."
    nas-backup
fi

echo -e "\n==> Before proceeding with the update, check Arch news: https://archlinux.org/news/"
echo "Press Enter when ready (or Ctrl+C to abort)..."
read

echo -e "\n==> Orphaned packages:"
pacman -Qtd || echo "None found."
echo ""

echo "==> Failed services:"
systemctl --failed
echo -en "\nContinue with update? [y/N] "
read -r response
[[ ! "$response" =~ ^[Yy]$ ]] && echo "Aborted." && exit 1

echo -en "\nRefresh mirrorlist? [y/N] "
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "==> Refreshing mirrorlist..."
    sudo reflector --latest 10 --sort rate --save /etc/pacman.d/mirrorlist
fi

echo -e "\n==> Updating system..."
eos-update --aur --pacdiff -l 3

echo -e "\n==> Updating Rust..."
rustup update

echo -e "\n==> Updating Flatpak..."
flatpak update -y

echo -e "\n==> Update complete!"
echo -en "Reboot now? [y/N] "
read -r response
[[ "$response" =~ ^[Yy]$ ]] && sudo reboot
