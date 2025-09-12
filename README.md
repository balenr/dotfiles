# My Dotfiles

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
- [GNU Stow](https://www.gnu.org/software/stow/) - To manage my dotfiles
- [Neovim](https://neovim.io) - Vim-based text editor
- [Ghostty](https://ghostty.org) - Terminal emulator
- [WezTerm](https://wezterm.org) - Terminal emulator

## Requirements

Make sure you have the following installed.

### Homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Git

```shell
# First install Git
brew install git

# Clone the repo
cd ~
git clone https://github.com/balenr/dotfiles.git ~/.dotfiles
```

