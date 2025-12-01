echo "Change to myarchy-nvim package"
myarchy-pkg-drop myarchy-lazyvim
myarchy-pkg-add myarchy-nvim

# Will trigger to overwrite configs or not to pickup new hot-reload themes
myarchy-nvim-setup
