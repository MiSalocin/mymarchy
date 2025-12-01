echo "Add Catppuccin Latte light theme"

if [[ ! -L "~/.config/myarchy/themes/catppuccin-latte" ]]; then
  ln -snf ~/.local/share/myarchy/themes/catppuccin-latte ~/.config/myarchy/themes/
fi
