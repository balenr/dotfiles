# My dotfiles

Contains configuration files for:
- vim
- tmux
- zsh

## Regarding vim

I use `Vundle` for plugin management, so get that first. Then run `:PluginInstall` from vim.

### To install Vundle

```
$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

After installing Vundle open `vim` and run `:PluginInstall`.

## Regarding zsh

I use `oh-my-zsh` for zsh customization. To install oh-my-zsh:

`$ sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`

### Enable Plugins (zsh-autosuggestions & zsh-syntax-highlighting)

`$ git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`

`$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

### Install Powerlevel9k theme:

`$ git clone https://github.com/bhilburn/powerlevel9k.git $ZSH_CUSTOM/themes/powerlevel9k`