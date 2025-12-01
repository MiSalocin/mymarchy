echo "Make hackerman available as new theme"

if [[ ! -L ~/.config/myarchy/themes/hackerman ]]; then
  rm -rf ~/.config/myarchy/themes/hackerman
  ln -nfs ~/.local/share/myarchy/themes/hackerman ~/.config/myarchy/themes/
fi
