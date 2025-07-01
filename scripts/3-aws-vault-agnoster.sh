print_aws_vault_agnoster_help() {
  echo "To show your current aws-vault session in the agnoster theme, add the following to your agnoster.zsh-theme (e.g., ~/.oh-my-zsh/themes/agnoster.zsh-theme):"
  echo
  echo 'prompt_aws_vault_segment() {'
  echo '  [[ -z "\$AWS_VAULT" ]] && return'
  echo '  echo -n "\${AWS_VAULT:gs/%/%%}"'
  echo '}'
  echo
  echo 'prompt_aws_vault() {'
  echo '  local vault_segment'
  echo '  vault_segment="$(prompt_aws_vault_segment)"'
  echo '  [[ \$vault_segment != "" ]] && prompt_segment cyan black "\$vault_segment"'
  echo '}'
  echo
  echo "Then, in the build_prompt function, add:"
  echo '  prompt_aws_vault'
  echo "before 'prompt_aws' to display the aws-vault profile segment."
  echo
  echo "After editing, reload your shell or source your theme file."
} 