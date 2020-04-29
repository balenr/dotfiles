# René's dotfiles for macOS and FreeBSD

These are my configuration files (dotfiles) for macOS and FreeBSD. Use at your own risk.

Most of the files are used on macOS, but should work on other \*nix like systems as well.

Currently the repository contains configuration files for:

- vim
- tmux
- zsh (both macOS and FreeBSD)
- X11

## Vim Vundle

I use `Vundle` for plugin management, so get that first. Then run `:PluginInstall` from vim.

### To install Vundle

```
$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

After installing Vundle open `vim` and run `:PluginInstall`.

## Zsh

I use `oh-my-zsh` for zsh customization. To install oh-my-zsh:

`$ sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`

### Enable Plugins (zsh-autosuggestions & zsh-syntax-highlighting)

`$ git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`

`$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

### Install Powerlevel9k theme:

`$ git clone https://github.com/powerlevel9k/powerlevel9k.git $ZSH_CUSTOM/themes/powerlevel9k`
