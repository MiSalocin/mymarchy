# Copy over Myarchy configs
mkdir -p ~/.config
cp -R ~/.local/share/myarchy/config/* ~/.config/

# Use default bashrc from Myarchy
chsh -s /bin/zsh
cp ~/.local/share/myarchy/default/zshrc ~/.zshrc
