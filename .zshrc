# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(brew shellenv)"
source "$(brew --prefix)/share/antigen/antigen.zsh"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle macos
antigen bundle Aloxaf/fzf-tab
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-autosuggestions

# Load the theme.
# requires Solarized Dark color scheme
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

if command -v kubectl &> /dev/null
then
  source <(kubectl completion zsh)
fi

# User configuration
alias vim=nvim
alias vi=nvim
alias lg=lazygit
alias l='exa'
alias la='exa -a'
alias ll='exa -lah'
alias ls='exa --color=auto'
alias cat='bat --style=plain'

export EDITOR=nvim
export GOPATH=${HOME}/go
export PATH="${PATH}:${GOPATH}/bin"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=240"
export DEFAULT_USER=`whoami`
export DISABLE_MAGIC_FUNCTIONS="true"
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.aks.zsh ] && source ~/.aks.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
