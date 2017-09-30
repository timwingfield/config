# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="timwingfield"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby bundler)

source $ZSH/oh-my-zsh.sh
source ~/.profile
source ~/.zsh/aliases.zsh
source ~/.zsh/functions.zsh

# Customize to your needs...

export EDITOR='vim'

# Set up tmuxinator
# old way, still on FireEye MBP[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
source ~/.bin/tmuxinator.zsh

# configure home directory for brew-cask
export HOMEBREW_CASK_OPTS='--appdir=/Applications'


export PATH=/usr/local/bin:$PATH

# put postgres.app in the path
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

chruby 2.4.1

# added by travis gem
[ -f /Volumes/Data/Users/Timbo/.travis/travis.sh ] && source /Volumes/Data/Users/Timbo/.travis/travis.sh

# adds nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# FireEye/Mandiant config
# sets redis_vars
export REDIS_VARS_URL=redis://config.mansfield.mandiant.com:6379/0

# put Yarn in path
export PATH="$PATH:`yarn global bin`"

# go

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
