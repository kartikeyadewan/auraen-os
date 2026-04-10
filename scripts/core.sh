echo "🌐 Refreshing mirrors..."
sudo pacman -Syy
echo "￼ Installing VS Code..."

if ! command -v code &> /dev/null; then
  sudo pacman -S --noconfirm code || echo "￼ Failed to install VS Code"
else
  echo "￼ VS Code already installed"
fi
echo "🧩 Installing VS Code extensions..."

code --install-extension ms-python.python || echo "❌ Failed Python extension"
code --install-extension esbenp.prettier-vscode || echo "❌ Failed Prettier"
code --install-extension dbaeumer.vscode-eslint || echo "❌ Failed ESLint"
code --install-extension ms-vscode.cpptools || echo "❌ Failed C/C++ tools"

echo "✅ VS Code setup complete!"
