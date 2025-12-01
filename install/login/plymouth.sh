if [ "$(plymouth-set-default-theme)" != "myarchy" ]; then
  sudo cp -r "$HOME/.local/share/myarchy/default/plymouth" /usr/share/plymouth/themes/myarchy/
  sudo plymouth-set-default-theme myarchy
fi
