#!/bin/bash

# YAY
yay

# Update Repositories Recursively:
sudo-rs pacman -Syu --config ~/.pacmanrepofiles/cachyos.conf --noconfirm |& grep -v "is newer than"
sudo-rs pacman -Syu --config ~/.pacmanrepofiles/core-testing.conf --noconfirm |& grep -v "is newer than"
sudo-rs pacman -Syu --config ~/.pacmanrepofiles/extra-testing.conf --noconfirm |& grep -v "is newer than"
sudo-rs pacman -Syu --config ~/.pacmanrepofiles/multilib-testing.conf --noconfirm |& grep -v "is newer than"
sudo-rs pacman -Syu --config ~/.pacmanrepofiles/core.conf --noconfirm |& grep -v "is newer than"
sudo-rs pacman -Syu --config ~/.pacmanrepofiles/extra.conf --noconfirm |& grep -v "is newer than"
sudo-rs pacman -Syu --config ~/.pacmanrepofiles/multilib.conf --noconfirm |& grep -v "is newer than"
sudo-rs pacman -Syu --config ~/.pacmanrepofiles/endeavouros.conf --noconfirm |& grep -v "is newer than"

# Update:
topgrade
arch-update -d -s

# Cleanup:
sudo-rs rm -rf ~/.cache/* /tmp/*
conda clean --all
sudo-rs rm -rf /var/cache/pacman/pkg/*
yay -Scc

# Update Package Lists:
pacman -Qqe > /etc/pkglist.txt
