rm -rf ~/.config/nvim/
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
ln -sf "$HOME/.config/myarchy/current/theme/neovim.lua" "$HOME/.config/nvim/lua/plugins/theme.lua"
touch ~/.config/nvim/lua/plugins/telescope.lua


echo "return {
    'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
      dependencies = { 'nvim-lua/plenary.nvim' }
    }" >> ~/.config/nvim/lua/plugins/telescope.lua
