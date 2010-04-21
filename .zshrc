autoload -U compinit && compinit
autoload colors && colors

bindkey "^[" vi-cmd-mode

if [[ -s /Users/Timbo/.rvm/scripts/rvm ]] ; then source /Users/Timbo/.rvm/scripts/rvm ; fi

source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/history.zsh
source ~/.zsh/set_options.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
