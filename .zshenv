function exists () {
    command -v $1 >/dev/null 2>&1
}

export PATH="$HOME/.config/bin/:/usr/local/bin:/usr/local/sbin:$PATH"
