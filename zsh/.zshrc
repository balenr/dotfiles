ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

## Asynchronous plugin loading
zinit for \
    light-mode \
  zsh-users/zsh-syntax-highlighting \
    light-mode \
  zsh-users/zsh-completions \
    light-mode \
  zsh-users/zsh-autosuggestions \
    light-mode \
  Aloxaf/fzf-tab

## Add in snippets
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

## Load zsh-completions
autoload -Uz compinit
if [[ -n "$ZSH_COMPDUMP" ]]; then
  compinit -d "$ZSH_COMPDUMP"
else
  compinit
fi

zinit cdreplay  -q

## History configuration
HISTSIZE=100000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory sharehistory hist_ignore_space hist_ignore_all_dups hist_save_no_dups hist_ignore_dups hist_find_no_dups

export MANPAGER="sh -c 'col -bx | bat --plain --language man'"
export PAGER='bat'
export EDITOR='nvim'

## FZF Optimizations
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

## Custom functions
function exists () {
    command -v $1 >/dev/null 2>&1
}

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

function nvims() {
  items=("default", "nvim-from-scratch", "nvim-kickstart")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt="Neovim Config > " --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

## Aliases
alias ..='cd ..'
alias egrep='grep -E'
alias fgrep='grep -F'
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias ls='eza --grid --width=100 --icons'
alias l='eza --long --icons --git'
alias ll='eza --long --header --icons --git --group-directories-first'
alias la='eza --long --all --header --icons --git --group-directories-first'
alias md='mkdir -p'
alias rd='rmdir'

# System
alias shutdown='sudo shutdown now'
alias reboot='sudo reboot'
alias sleep='pmset sleepnow'
alias c='clear'
alias e='exit'

# nvim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias t='tmux'
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
source $HOME/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

## Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

## Starship prompt
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"
