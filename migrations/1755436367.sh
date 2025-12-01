echo "Add minimal starship prompt to terminal"

if myarchy-cmd-missing starship; then
  myarchy-pkg-add starship
  cp $MYMARCHY_PATH/config/starship.toml ~/.config/starship.toml
fi
