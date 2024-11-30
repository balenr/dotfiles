ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

# Load zsh-completions
autoload -Uz compinit && compinit

# History
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

export LANG=en_US.UTF-8
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES # Ansible
#export MANPAGER="sh -c 'col -bx | bat --theme default -l man -p'"

# Homebrew
eval "$(brew shellenv)"

export HOMEBREW_CASK_OPTS="--no-quarantine"
export HOMEBREW_NO_ENV_HINTS=1

# GPG
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

# OpenSSH
export SSH_AUTH_SOCK="~/.ssh/agent"

# Aliases
alias v='nvim'
alias egrep='grep -E'
alias fgrep='grep -F'
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'

alias ls='ls -FG'
alias la='ls -lAh'
alias ll='ls -lh'

alias md='mkdir -p'
alias rd='rmdir'

alias t='tmux'
alias e='exit'

alias cls='clear'
alias c='clear'

alias cat='bat'

alias bbd='brew bundle dump --global --force --describe'

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
#zstyle ':completion:*' menu select
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf --preview 'ls --color=auto $realpath'
zstyle ':fzf-tab"complete:__zoxide_z:*' fzf --preview 'ls --color=auto $realpath'

export EDITOR='nvim'

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"
