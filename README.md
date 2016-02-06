# My dotfiles

Contains configuration files for:
- vim
- tmux
- zsh

## regarding vim

I use `Vundle` for plugin management, so get that first. Then run `:PluginInstall` from vim.
To install Vundle:

$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## regarding zsh

I use `oh-my-zsh` for zsh customization. To install oh-my-zsh:

$ sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
