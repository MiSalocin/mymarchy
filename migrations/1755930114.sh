echo "Add new Myarchy Menu icon to Waybar"

mkdir -p ~/.local/share/fonts
cp ~/.local/share/myarchy/config/myarchy.ttf ~/.local/share/fonts/
fc-cache
