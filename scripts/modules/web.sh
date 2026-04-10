#!/bin/bash

echo "🌐 Installing Web Development Stack..."

packages=(
  nodejs
  npm
)

for pkg in "${packages[@]}"; do
  if pacman -Qi "$pkg" &> /dev/null; then
    echo "✅ $pkg already installed"
  else
    echo "⬇️ Installing $pkg..."
    sudo pacman -S --noconfirm "$pkg" || echo "❌ Failed to install $pkg"
  fi
done

echo "✅ Web stack installed!"
