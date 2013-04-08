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
plugins=(git ruby rvm bunder)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export EDITOR='vim'

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

# Set up tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

#project shortcuts
alias pom='cd /Users/Timbo/Code/simplypractice/pomfrey'
alias td='cd /Users/Timbo/Code/testdouble/comverge/intellisource'

# Comverge aliases
alias zarc='NO_BIS=blah LOCALE=en-ZA be rails c'
alias zars='NO_BIS=blah LOCALE=en-ZA be rails s'
alias rdbm='rake db:migrate db:test:prepare'
alias jci='bundle exec jasmine-headless-webkit -c -j spec/javascripts/support/energy_insight.yml'
