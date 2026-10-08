## Homebrew setup (better suited here than .zshrc)
eval "$(brew shellenv)"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export HOMEBREW_NO_ENV_HINTS=1

## GPG setup
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

## OpenSSH agent
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

##
# Your previous /Users/rene/.zprofile file was backed up as /Users/rene/.zprofile.macports-saved_2026-09-04_at_10:57:59
##

# MacPorts Installer addition on 2026-09-04_at_10:57:59: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

