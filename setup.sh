#!/bin/zsh

# Basic installs
brew install rcm neovim ripgrep tmuxinator

# Install fonts
brew tap homebrew/cask-fonts
brew install font-fira-code-nerd-font

# Install custom zsh theme
wget -O ~/.oh-my-zsh/custom/themes/common.zsh-theme https://raw.githubusercontent.com/jackharrisonsherlock/common/master/common.zsh-theme

# Install packer (Neovim plugin manager)
if [ ! -d "$HOME/.local/share/nvim/site/pack/packer" ]
then
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

# Setup `rcup` for the first time, after this it can just be run with `rcup`
env RCRC=$HOME/dotfiles/rcrc rcup

source ~/.zshrc
