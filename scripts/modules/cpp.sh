#!/bin/bash
LOGFILE="$HOME/auraen.log"
exec > >(tee -a "$LOGFILE") 2>&1

packages=(
  gcc
  gdb
  cmake
  make
)

for pkg in "${packages[@]}"; do
  if pacman -Qi "$pkg" &> /dev/null; then
    echo "$pkg already installed"
  else
    sudo pacman -S --noconfirm "$pkg" || echo "Failed to install $pkg"
  fi
done
