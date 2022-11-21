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
brew install exa
brew install bat
brew install antigen
brew install git-delta
brew install npm
brew install yq

#brew install --casks postman docker
brew install jesseduffield/lazygit/lazygit

if [[ $OSTYPE == 'darwin'* ]]; then
  brew tap homebrew/cask-fonts
  brew install --cask font-hack-nerd-font
fi

# install dlv for go debugger
if command -v go &> /dev/null
then
  go install github.com/go-delve/delve/cmd/dlv@latest
fi
