# Source this file to load all helper functions and commands
for file in $(find "$(dirname "$BASH_SOURCE")/scripts" -type f -name '[0-9]-*.sh' | sort); do
  source "$file"
done

helpme() {
  if [[ "$1" == "1" ]]; then
    print_add_to_zshrc_help
    return 0
  elif [[ "$1" == "2" ]]; then
    print_aws_vault_help
    return 0
  fi
  echo "Select an option:"
  echo "1) Add this to zshrc"
  echo "2) AWS vault aliases (session and chrome window)"
  echo "3) Exit"
  printf "Enter choice [1-3]: "
  read choice

  case $choice in
    1)
      print_add_to_zshrc_help
      ;;
    2)
      print_aws_vault_help
      ;;
    3)
      return 0
      ;;
    *)
      echo "Invalid option."
      ;;
  esac
}
