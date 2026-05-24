#!/bin/bash
LOGFILE="$HOME/auraen.log"
exec > >(tee -a "$LOGFILE") 2>&1
FLAG="$HOME/.auraen_setup_done"

if [ -f "$FLAG" ]; then
  exit 0
fi

echo "Auraen OS Setup"
echo ""

bash scripts/core.sh

echo ""
echo "Select development environment:"
echo "1) Web Development"
echo "2) Python / AI"
echo "3) C/C++"
echo "4) Install Everything"
echo "5) Skip"

read -p "Enter choice [1-5]: " choice
read -p "Proceed with installation? (y/n): " confirm

if [[ $confirm != "y" ]]; then
  echo "Setup cancelled."
  exit 1
fi

case $choice in
  1) bash scripts/modules/web.sh ;;
  2) bash scripts/modules/python.sh ;;
  3) bash scripts/modules/cpp.sh ;;
  4)
    bash scripts/modules/web.sh
    bash scripts/modules/python.sh
    bash scripts/modules/cpp.sh
    ;;
  5) echo "Skipped." ;;
  *) echo "Invalid option" ;;
esac

echo ""
echo "Auraen setup complete."
echo "Run: code ."
touch "$FLAG"
