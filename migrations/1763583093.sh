echo "Make ethereal available as new theme"

if [[ ! -L ~/.config/myarchy/themes/ethereal ]]; then
  rm -rf ~/.config/myarchy/themes/ethereal
  ln -nfs ~/.local/share/myarchy/themes/ethereal ~/.config/myarchy/themes/
fi
