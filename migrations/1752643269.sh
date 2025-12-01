echo "Add new matte black theme"

if [[ ! -L "~/.config/myarchy/themes/matte-black" ]]; then
  ln -snf ~/.local/share/myarchy/themes/matte-black ~/.config/myarchy/themes/
fi
