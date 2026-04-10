#!/bin/bash

echo "🐍 Installing Python / AI Stack..."

packages=(
  python
  python-pip
  python-virtualenv
  jupyter-notebook
)

for pkg in "${packages[@]}"; do
  if pacman -Qi "$pkg" &> /dev/null; then
    echo "✅ $pkg already installed"
  else
    echo "⬇️ Installing $pkg..."
    sudo pacman -S --noconfirm "$pkg" || echo "❌ Failed to install $pkg"
  fi
done

echo "🎉 Python stack installed!"
