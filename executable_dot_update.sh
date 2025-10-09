#!/bin/bash

# Update Repositories Recursively:
sudo pacman -Syu --config ~/.pacmanrepofiles/core.conf --noconfirm |& grep -v "is newer than"
sudo pacman -Syu --config ~/.pacmanrepofiles/core-testing.conf --noconfirm |& grep -v "is newer than"
sudo pacman -Syu --config ~/.pacmanrepofiles/extra.conf --noconfirm |& grep -v "is newer than"
sudo pacman -Syu --config ~/.pacmanrepofiles/extra-testing.conf --noconfirm |& grep -v "is newer than"
sudo pacman -Syu --config ~/.pacmanrepofiles/multilib.conf --noconfirm |& grep -v "is newer than"
sudo pacman -Syu --config ~/.pacmanrepofiles/multilib-testing.conf --noconfirm |& grep -v "is newer than"
sudo pacman -Syu --config ~/.pacmanrepofiles/cachyos.conf --noconfirm |& grep -v "is newer than"
sudo pacman -Syu --config ~/.pacmanrepofiles/endeavouros.conf --noconfirm |& grep -v "is newer than"

# Update:
topgrade
arch-update -d -s

# Cleanup:
sudo rm -rf ~/.cache/* /tmp/*

# Update Package Lists:
~/.diff.sh
