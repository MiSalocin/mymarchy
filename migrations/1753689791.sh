echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/myarchy/themes/ristretto ]]; then
  ln -nfs ~/.local/share/myarchy/themes/ristretto ~/.config/myarchy/themes/
fi
