export ZSH=$HOME/.oh-my-zsh

ZSH_THEME=""

plugins=( fzf git brew z colored-man-pages zsh-syntax-highlighting zsh-autosuggestions )
source $ZSH/oh-my-zsh.sh

# export PATH="~/.config/bin:/usr/local/sbin:$PATH"
export LANG=en_US.UTF-8
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES # Ansible
export MANPAGER="sh -c 'col -bx | bat --theme default -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

alias cls='clear'
alias bbd='brew bundle dump --force --describe'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"
