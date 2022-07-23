#!/bin/bash

brew install jq
brew install wget
brew install tmux
brew install neovim
brew install watch
brew install ripgrep
brew install fzf
$(brew --prefix)/opt/fzf/install
brew install fd
brew install go
brew install zsh-autosuggestions

#brew install --casks postman docker
brew install jesseduffield/lazygit/lazygit

brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# install dlv for go debugger
if command -v go &> /dev/null
then
  go install github.com/go-delve/delve/cmd/dlv@latest
fi
