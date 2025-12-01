echo "Link new theme picker config"

mkdir -p ~/.config/elephant/menus
ln -snf $MYMARCHY_PATH/default/elephant/myarchy_themes.lua ~/.config/elephant/menus/myarchy_themes.lua
sed -i '/"menus",/d' ~/.config/walker/config.toml
myarchy-restart-walker
