# Source this file to load all helper functions and commands
# Determine the directory of this script, even if sourced from elsewhere
SOURCE_ME_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-${(%):-%N}}")" && pwd)"

for file in $(find "$SOURCE_ME_DIR/scripts" -type f -name '[0-9]-*.sh' | sort); do
  source "$file"
done

helpme() {
  if [[ "$1" == "1" ]]; then
    print_add_to_zshrc_help
    return 0
  elif [[ "$1" == "2" ]]; then
    print_aws_vault_help
    return 0
  elif [[ "$1" == "3" ]]; then
    print_aws_vault_agnoster_help
    return 0
  fi
  echo "Select an option:"
  echo "1) Add this to zshrc"
  echo "2) AWS vault aliases (session and chrome window)"
  echo "3) aws-vault session in agnoster theme"
  echo "4) Exit"
  printf "Enter choice [1-4]: "
  read choice

  case $choice in
    1)
      print_add_to_zshrc_help
      ;;
    2)
      print_aws_vault_help
      ;;
    3)
      print_aws_vault_agnoster_help
      ;;
    4)
      return 0
      ;;
    *)
      echo "Invalid option."
      ;;
  esac
}

# To hide user@host
DEFAULT_USER=`whoami`