#!/usr/bin/env zsh
# Zsh aliases

## Navigation
alias ..='cd ..'
alias ~='cd ~'

## LS commands
if command -v eza >/dev/null 2>&1; then
  alias l='eza --long --group-directories-first'
  alias ls='eza --grid --width=100 --icons --group-directories-first'
  alias ll='eza --long --icons --git'
  alias la='eza --long --all --icons --git'
else
  alias l='ls -lF'
  alias ll='ls -laF'
  alias la='ls -A'
  alias lt='tree -L 2'
  alias lh='ls -lath'
fi

alias egrep='grep -E'
alias fgrep='grep -F'
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'

## File operations
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'

## System
alias shutdown='sudo shutdown now'
alias reboot='sudo reboot'
alias sleep='pmset sleepnow'
alias c='clear'
alias e='exit'
alias x='exit'

## nvim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias rvim='NVIM_APPNAME=rvim nvim'
alias udemy='NVIM_APPNAME=nvim-udemy nvim'
alias t='tmux'
alias ck='nvim ~/.config/kitty/kitty.conf'
alias cls='clear'
alias cat='bat'
alias lg='lazygit'
alias bbd='brew bundle dump --force --describe'

## Config files
alias zshrc='${EDITOR} ~/.zshrc'
alias tmuxconf='${EDITOR} ~/.config/tmux/tmux.conf'
