# FISH
# A smart and friendly command line
# https://fishshell.com

if status is-interactive
    # Commands to run in interactive sessions can go here

    starship init fish | source
    zoxide init fish | source

    # set -U fish_greeting # disable fish greeting
    set -Ux EDITOR nvim

    # set bat as manpager for nice coloring
    set -x MANPAGER "sh -c 'col -bx | bat --theme Dracula -l man -p'"

    # Initialize Homebrew
    # eval (/usr/local/bin/brew shellenv)

    # Do this instead, to prevent duplicate "/usr/local/bin" in PATH
    set -gx HOMEBREW_PREFIX /usr/local
    set -gx HOMEBREW_CELLAR /usr/local/Cellar
    set -gx HOMEBREW_REPOSITORY /usr/local/Homebrew
    set -q PATH; or set PATH ''
    set -gx PATH /usr/local/sbin $PATH
    set -q MANPATH; or set MANPATH ''
    set -gx MANPATH /usr/local/share/man $MANPATH
    set -q INFOPATH; or set INFOPATH ''
    set -gx INFOPATH /usr/local/share/info $INFOPATH

    fish_add_path $HOME/.config/bin # custom scripts go there

    #source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh
    #source $(brew --prefix)/opt/chruby/share/chruby/auto.sh
    #chruby ruby-3.1.3
end
