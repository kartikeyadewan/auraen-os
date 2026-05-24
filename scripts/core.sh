#!/bin/bash
LOGFILE="$HOME/auraen.log"
exec > >(tee -a "$LOGFILE") 2>&1

sudo pacman -Syy

if ! command -v code &> /dev/null; then
  sudo pacman -S --noconfirm code || echo "Failed to install VS Code"
fi

code --install-extension ms-python.python 2>/dev/null || true
code --install-extension esbenp.prettier-vscode 2>/dev/null || true
code --install-extension dbaeumer.vscode-eslint 2>/dev/null || true
code --install-extension ms-vscode.cpptools 2>/dev/null || true
