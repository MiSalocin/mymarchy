# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(MYMARCHY_CHROOT_INSTALL|MYMARCHY_ONLINE_INSTALL|MYMARCHY_USER_NAME|MYMARCHY_USER_EMAIL|USER|HOME|MYMARCHY_REPO|MYMARCHY_REF|MYMARCHY_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done
