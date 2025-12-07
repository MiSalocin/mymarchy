# Myarchy

Myarchy is a still opinionated fork of omarchy, by DHH.

Read more from the original on [omarchy.org](https://omarchy.org).

This fork is based on [jolleyDesign/lomarchy](https://github.com/jolleyDesign/lomarchy), that I used as inspiration for the modifications, updated for the current Omarchy version, rounded some corners off, and made it more to my liking.

## Modifications

- Removed:
  - 1Password
  - Dropbox
  - Chromium and webapps
  - Docker and lazydocker
  - Kdenlive
  - Signal
  - Typora
  - Xournal
  - Zoom
- Removed omarchy repo packages in favour of aur ([yay](https://github.com/Jguer/yay)), some of the packages are:
  - Aether
  - Elephant and extensions
  - LocalSend
  - Spotify
  - Wayfreeze
- Set [oh-my-zsh](https://ohmyz.sh/) with oh-my-zsh as default terminal
- Added [Telescope](https://github.com/nvim-telescope/telescope.nvim) and [3rd/image](https://github.com/3rd/image.nvim) for neovim
- Made the themes more rounded and removed most sharp edges
- Rebranded (totally based on omarchy, for now)

I'm also trying to remove, or, at least, decrease the number of scripts from bin and also rename the migration ones.


## License

Myarchy is released under the [MIT License](https://opensource.org/licenses/MIT).
