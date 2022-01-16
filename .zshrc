# .zshrc

# re-enable to profile zsh speed (1/2)
# zmodload zsh/zprof

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
ZSH_THEME="powerlevel10k/powerlevel10k"

# Path to your oh-my-zsh installation.
export ZSH=/Users/mattgabor/.oh-my-zsh

# load aliases
source ~/.aliases
# load aliases
source ~/.helpers

DEFAULT_USER="mattgabor"

plugins=(git web-search zsh-autosuggestions zsh-syntax-highlighting z)

# User configuration
source $ZSH/oh-my-zsh.sh

# path configuration
export GOPATH=$HOME/golang
export PATH=$PATH:$GOPATH/bin
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"
# add solana to path
export PATH="/Users/mattgabor/.local/share/solana/install/active_release/bin:$PATH"

# determine if needed
export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# autosuggest configuration
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=23"
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=TRUE

# re-enable to profile zsh speed (2/2)
# zprof