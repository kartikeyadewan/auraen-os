#!/bin/bash

echo "🚀 Welcome to Auraen Setup"

# Run core setup first
echo "⚙️ Running core setup..."
bash scripts/core.sh

echo ""
echo "Choose your development environment:"
echo "1) Web Development"
echo "2) Python / AI"
echo "3) C/C++"
echo "4) Install Everything"
echo "5) Skip for now"

read -p "Enter choice [1-5]: " choice

read -p "Proceed with installation? (y/n): " confirm

if [[ $confirm != "y" ]]; then
  echo "❌ Setup cancelled."
  exit 1
fi

case $choice in
  1)
    bash scripts/modules/web.sh
    ;;
  2)
    bash scripts/modules/python.sh
    ;;
  3)
    bash scripts/modules/cpp.sh
    ;;
  4)
    bash scripts/modules/web.sh
    bash scripts/modules/python.sh
    bash scripts/modules/cpp.sh
    ;;
  5)
    echo "⏭️ Skipped environment setup."
    ;;
  *)
    echo "❌ Invalid option"
    ;;
esac

echo "🎉 Auraen setup complete!"
