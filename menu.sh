#!/bin/bash

while true; do
  echo "Select an option:"
  echo "1) AWS vault aliases (session and chrome window)"
  echo "2) Exit"
  read -p "Enter choice [1-2]: " choice

  case $choice in
    1)
      bash scripts/aws-vault.sh
      ;;
    2)
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid option."
      ;;
  esac
done 