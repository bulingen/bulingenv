# Source this file to load all helper functions and commands
for file in $(find "$(dirname "$BASH_SOURCE")/scripts" -type f -name '*.sh'); do
  source "$file"
done

helpme() {
  if [[ "$1" == "1" ]]; then
    print_aws_vault_help
    return 0
  fi
  echo "Select an option:"
  echo "1) AWS vault aliases (session and chrome window)"
  echo "2) Exit"
  printf "Enter choice [1-2]: "
  read choice

  case $choice in
    1)
      print_aws_vault_help
      ;;
    2)
      return 0
      ;;
    *)
      echo "Invalid option."
      ;;
  esac
}
