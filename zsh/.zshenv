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
  items=("default" "rvim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt="Neovim Config > " --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

export PATH="/usr/local/Cellar/kleopatra/22.07.80.reinstall/bin:$HOME/.config/bin/:/usr/local/bin:/usr/local/sbin:$PATH"
