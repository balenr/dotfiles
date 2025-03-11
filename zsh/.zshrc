ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

## Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

## Add in snippets
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

## Load zsh-completions
autoload -Uz compinit && compinit

zinit cdreplay  -q

## History configuration
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
export MANPAGER="sh -c 'col -bx | bat --plain --language man'"
export PAGER='bat'
export EDITOR='nvim'

## FZF
#export FZF_DEFAULT_COMMAND="fd --type f -H -E '.git'"
export FZF_DEFAULT_OPTS="\
  --ansi \
  --border=rounded \
  --marker=' ' \
  --preview='bat --color=always {}' \
  --preview-window=hidden \
  --bind='space:toggle-preview' \
  --layout=reverse \
  --height=50% \
  --no-info \
  --no-separator \
  --color='16,bg+:-1,gutter:-1,prompt:5,pointer:5,marker:6,border:4,label:4,header:italic' \
  "

export FZF_CTRL_R_OPTS="--border-label=' history ' --prompt='  '"

## Homebrew
eval "$(brew shellenv)"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export HOMEBREW_NO_ENV_HINTS=1

## GPG
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

## OpenSSH
export SSH_AUTH_SOCK="~/.ssh/agent"

## Aliases
alias ..='cd ..'
alias egrep='grep -E'
alias fgrep='grep -F'
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias ls='eza -F --grid --width=80'
alias l='eza --long --icons --git'
alias la='eza --long --all --icons --git'
alias md='mkdir -p'
alias rd='rmdir'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias rvim='NVIM_APPNAME=rvim nvim'
alias t='tmux'
alias e='exit'
alias c='clear'
alias ck='nvim ~/.config/kitty/kitty.conf'
alias cls='clear'
alias cat='bat'
alias lg='lazygit'
alias bbd='brew bundle dump --force --describe'

## Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf --preview 'ls --color=auto $realpath'
zstyle ':fzf-tab"complete:__zoxide_z:*' fzf --preview 'ls --color=auto $realpath'

## Zsh syntax highlighting
source ~/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

## Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

