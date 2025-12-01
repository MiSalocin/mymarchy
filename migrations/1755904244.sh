echo "Update fastfetch config with new Myarchy logo"

myarchy-refresh-config fastfetch/config.jsonc

mkdir -p ~/.config/myarchy/branding
cp $MYMARCHY_PATH/icon.txt ~/.config/myarchy/branding/about.txt
