#
# ███████╗███████╗██╗  ██╗
# ╚══███╔╝██╔════╝██║  ██║
#   ███╔╝ ███████╗███████║
#  ███╔╝  ╚════██║██╔══██║
# ███████╗███████║██║  ██║
# ╚══════╝╚══════╝╚═╝  ╚═╝
# a UNIX command interpreter (shell)
# https://zsh.org

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME=""

plugins=( fzf git brew z colored-man-pages zsh-syntax-highlighting zsh-autosuggestions )
source $ZSH/oh-my-zsh.sh

export PATH="~/.config/bin:/usr/local/sbin:$PATH"
export LANG=en_US.UTF-8
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES # Ansible

alias cls='clear'
alias nvim-chad='NVIM_APPNAME=NvChad nvim'
alias nvim-astro='NVIM_APPNAME=AstroNvim nvim'
alias nvim-lazy='NVIM_APPNAME=LazyVim nvim'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"
