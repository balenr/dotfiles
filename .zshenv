function exists () {
    command -v $1 >/dev/null 2>&1
}

export PATH="/usr/local/bin:$PATH"