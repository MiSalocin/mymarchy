echo "Add the new Flexoki Light theme"

if [[ ! -L ~/.config/myarchy/themes/flexoki-light ]]; then
  ln -nfs ~/.local/share/myarchy/themes/flexoki-light ~/.config/myarchy/themes/
fi
