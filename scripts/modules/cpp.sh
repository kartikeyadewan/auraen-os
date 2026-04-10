#!/bin/bash

echo "⚙️ Installing C/C++ Stack..."

packages=(
  gcc
  gdb
  cmake
  make
)

for pkg in "${packages[@]}"; do
  if pacman -Qi "$pkg" &> /dev/null; then
    echo "✅ $pkg already installed"
  else
    echo "⬇️ Installing $pkg..."
    sudo pacman -S --noconfirm "$pkg" || echo "❌ Failed to install $pkg"
  fi
done

echo "🎉 C/C++ stack installed!"
