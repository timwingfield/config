# My config files
Thanks to the good folks at Edgecase for this config set up. I have removed a bunch of things they have that I don't
use, but the Edgecase set up was definitely the starting point.

## Setup

The following rake tasks will set up symbolic links in your home directory for each of the included configuration files.

    rake symlink

or 

    rake symlink:force

## Windows

The following rake task will tweak a few of the default configs to better behave on Windows

    rake windows
=======
# Setup

## Personal Usage

Aside from .gitconfig, this configuration is not specific to EdgeCase pairing machines.  To use on your personal machine, run the following rake task:

    rake symlink:force

This will forcefully create symlinks for all included configuration files *except* .gitconfig.  If you do not want existing config files to be overwritten, use:

    rake symlink

## Emacs

http://github.com/jimweirich/emacs-setup/tree/master
