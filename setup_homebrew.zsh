#!/usr/bin/env zsh

echo "\nStarting Homebrew Setup...\n"

if exists brew; then
    echo "brew exists, skipping install"
else
    echo "brew doesn't exist, continuing with install"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "\nInstalling homebrew packages..."

# TODO: Add `--no-quarantine` option to zshrc.
# You can't use `brew bundle --no-quarantine` as an option.
# Therefore, use: export HOMEBREW_CASK_OPTS="--no-quarantine" in zshrc.

# TODO: move `brew bundle` line into if statement.
# If brew isn't installed, then brew bundle shouldn't run.
brew bundle --verbose

exit 0