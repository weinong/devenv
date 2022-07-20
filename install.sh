#!/bin/bash

brew install jq
brew install tmux
brew install neovim
brew install watch
brew install ripgrep
brew install fzf
$(brew --prefix)/opt/fzf/install
brew install fd

#brew install --casks postman docker
brew install jesseduffield/lazygit/lazygit

brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
