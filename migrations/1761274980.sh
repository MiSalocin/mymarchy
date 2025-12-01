echo "Migrate to proper packages for localsend and asdcontrol"

if myarchy-pkg-present localsend-bin; then
  myarchy-pkg-drop localsend-bin
  myarchy-pkg-add localsend
fi

if myarchy-pkg-present asdcontrol-git; then
  myarchy-pkg-drop asdcontrol-git
  myarchy-pkg-add asdcontrol
fi
