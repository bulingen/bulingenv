# Requires aws-vault set up. Examples:
#   awslogin myprofile
#   awsexec myprofile

print_aws_vault_help() {
  echo "Requires aws-vault set up. Examples:"
  echo "  awslogin myprofile"
  echo "  awsexec myprofile"
}

awslogin() {
  local profile="$1"
  if [ -z "$profile" ]; then
    echo "Usage: awslogin <profile>"
    return 1
  fi

  # Get the login URL from aws-vault (without opening browser)
  local url
  url=$(aws-vault --debug login "$profile" --stdout 2>/dev/null)
  if [ -z "$url" ]; then
    echo "Failed to get login URL for profile: $profile"
    return 1
  fi

  # Open the URL in Chrome with the given profile directory
  google-chrome --new-window --profile-directory="$profile" "$url" >/dev/null 2>&1 &
}

awsexec() {
  echo "Using $1"; aws-vault exec "$1" --
} 