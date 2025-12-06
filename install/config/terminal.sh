#!/bin/bash
set -e

# Change default shell to zsh
sudo chsh -s "$(which zsh)" "$USER"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended --skip-chsh --keep-zshrc

# Move .oh-my-zsh
mv "$HOME/.oh-my-zsh" "$HOME/.local/share/oh-my-zsh"


# Create .zshrc
cat > "$HOME/.zshrc" << EOF
# Basic configuration
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS

# oh-my-zsh
ZSH_THEME=""
plugins=(git)
source "$HOME/.local/share/oh-my-zsh/oh-my-zsh.sh"

# Source custom configurations
source "$HOME/.local/share/myarchy/default/zshrc"

# Starship prompt
eval "\$(starship init zsh)"
EOF
