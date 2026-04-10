#!/bin/bash

case "$1" in
  install)
    case "$2" in
      web)
        bash scripts/modules/web.sh
        ;;
      python)
        bash scripts/modules/python.sh
        ;;
      cpp)
        bash scripts/modules/cpp.sh
        ;;
      all)
        bash scripts/modules/web.sh
        bash scripts/modules/python.sh
        bash scripts/modules/cpp.sh
        ;;
      *)
        echo "❌ Unknown module"
        ;;
    esac
    ;;
  *)
    echo "Usage:"
    echo "auraen install [web|python|cpp|all]"
    ;;
esac
