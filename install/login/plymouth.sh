if [ "$(plymouth-set-default-theme)" != "myarchy" ]; then
  if [-d /usr/share/plymouth/themes/myarchy/]; then
    sudo rm -rf /usr/share/plymouth/themes/myarchy/
  fi
  sudo cp -r "$HOME/.local/share/myarchy/default/plymouth" /usr/share/plymouth/themes/myarchy/
  sudo plymouth-set-default-theme myarchy
fi
