#!/bin/bash
LOGFILE="$HOME/auraen.log"
exec > >(tee -a "$LOGFILE") 2>&1

case "$1" in
  install)
    case "$2" in
      web)    bash scripts/modules/web.sh ;;
      python) bash scripts/modules/python.sh ;;
      cpp)    bash scripts/modules/cpp.sh ;;
      all)
        bash scripts/modules/web.sh
        bash scripts/modules/python.sh
        bash scripts/modules/cpp.sh
        ;;
      *)
        echo "Unknown module: $2"
        echo "Usage: auraen install [web|python|cpp|all]"
        ;;
    esac
    ;;
  *)
    echo "Usage: auraen install [web|python|cpp|all]"
    ;;
esac
