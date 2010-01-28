autoload -U compinit && compinit
autoload colors && colors

bindkey "^[" vi-cmd-mode

if [[ -s /Users/stevenharman/.rvm/scripts/rvm ]] ; then source /Users/stevenharman/.rvm/scripts/rvm ; fi

source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/history.zsh
source ~/.zsh/set_options.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
