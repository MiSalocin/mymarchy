echo "Replace wofi with walker as the default launcher"

if myarchy-cmd-missing walker; then
  myarchy-pkg-add walker-bin libqalculate

  myarchy-pkg-drop wofi
  rm -rf ~/.config/wofi

  mkdir -p ~/.config/walker
  cp -r ~/.local/share/myarchy/config/walker/* ~/.config/walker/
fi
