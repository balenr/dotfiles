## Homebrew setup (better suited here than .zshrc)
eval "$(brew shellenv)"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export HOMEBREW_NO_ENV_HINTS=1

## GPG setup
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

## OpenSSH agent
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
