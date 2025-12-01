echo "Adding Myarchy version info to fastfetch"
if ! grep -q "myarchy" ~/.config/fastfetch/config.jsonc; then
  cp ~/.local/share/myarchy/config/fastfetch/config.jsonc ~/.config/fastfetch/
fi

