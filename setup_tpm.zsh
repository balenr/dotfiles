#!/usr/bin/env zsh

echo "\nStarting Tmux Plugin Manager install...\n"

if test ! -d $HOME/.tmux/plugins/tpm; then
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm \
    && $HOME/.tmux/plugins/tpm/bin/install_plugins
else
    echo "Tmux Plugin Manager exists, skipping install"
fi

exit 0