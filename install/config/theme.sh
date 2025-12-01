# Set links for Nautilius action icons
sudo ln -snf /usr/share/icons/Adwaita/symbolic/actions/go-previous-symbolic.svg /usr/share/icons/Yaru/scalable/actions/go-previous-symbolic.svg
sudo ln -snf /usr/share/icons/Adwaita/symbolic/actions/go-next-symbolic.svg /usr/share/icons/Yaru/scalable/actions/go-next-symbolic.svg

# Setup theme links
mkdir -p ~/.config/myarchy/themes
for f in ~/.local/share/myarchy/themes/*; do ln -nfs "$f" ~/.config/myarchy/themes/; done

# Set initial theme
mkdir -p ~/.config/myarchy/current
ln -snf ~/.config/myarchy/themes/catppuccin ~/.config/myarchy/current/theme
ln -snf ~/.config/myarchy/current/theme/backgrounds/1-catppuccin.png ~/.config/myarchy/current/background

# Set specific app links for current theme
# ~/.config/myarchy/current/theme/neovim.lua -> ~/.config/nvim/lua/plugins/theme.lua is handled via myarchy-setup-nvim

mkdir -p ~/.config/btop/themes
ln -snf ~/.config/myarchy/current/theme/btop.theme ~/.config/btop/themes/current.theme

mkdir -p ~/.config/mako
ln -snf ~/.config/myarchy/current/theme/mako.ini ~/.config/mako/config
