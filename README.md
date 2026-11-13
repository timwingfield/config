# My config files

Originally based on the EdgeCase config set up.

## Setup

    brew install git vim mise the_silver_searcher
    rake                      # symlink each dotfile into ~
    mise use -g ruby@3.4      # ruby (and node) versions via mise
    vim +PluginInstall +qall  # install vim plugins with Vundle

Vundle itself needs to be cloned first:

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Homebrew's environment is set in `~/.zprofile` (`eval "$(/opt/homebrew/bin/brew shellenv)"`).
