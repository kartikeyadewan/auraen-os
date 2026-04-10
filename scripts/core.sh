echo "🌐 Refreshing mirrors..."
sudo pacman -Syy
echo "￼ Installing VS Code..."

if ! command -v code &> /dev/null; then
  sudo pacman -S --noconfirm code || echo "￼ Failed to install VS Code"
else
  echo "￼ VS Code already installed"
fi
