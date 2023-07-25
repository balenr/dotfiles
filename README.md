# dotfiles

![alt text](https://img.shields.io/github/last-commit/balenr/dotfiles "Last commit")

These are my configuration files (dotfiles) for macOS. Use at your own risk.

Most of these files are used on macOS, but may work on other \*nix like systems as well.

Currently the repository contains configuration files for:

- [Zsh](https://zsh.org) - Shell for macOS and Linux
- [Tmux](https://github.com/tmux/tmux) - Terminal Multiplexer
- [Homebrew](https://brew.sh) - Package manager for macOS and Linux
## Zsh
Install `oh-my-zsh`:

`$ sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`

Enable Plugins (zsh-autosuggestions & zsh-syntax-highlighting)

`$ git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`

`$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

## Tmux
Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm):

`$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

## Homebrew
Install Homebrew:

`$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

The run:

`$ brew bundle ~/.dotfiles/Brewfile`

## TODO
- Configure Dotbot

