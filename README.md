# dotfiles

![GitHub last commit](https://img.shields.io/github/last-commit/balenr/dotfiles)
![GitHub issues](https://img.shields.io/github/issues/balenr/dotfiles)

These are my configuration files (dotfiles) for macOS. Use at your own risk. 😉

Most of these files are used on macOS, but may work on other \*nix like systems
as well.

## Software

Currently the repository contains configuration files for:

- [Zsh](https://zsh.org) - Default shell on macOS
- [Tmux](https://github.com/tmux/tmux) - Terminal Multiplexer
- [Homebrew](https://brew.sh) - Package manager for macOS and Linux
- [Bat](https://github.com/sharkdp/bat) - A cat clone with syntax highlighing

## Installation

### Tmux

Install Tmux Plugin Manager:

```shell
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
```

### Homebrew

Install Homebrew:

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then run the brew bundle command to install all applications in the Brewfile:

```shell
brew bundle --global --verbose
```
