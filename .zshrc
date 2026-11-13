# Homebrew env (PATH, MANPATH, etc.) lives in ~/.zprofile via `brew shellenv`

export EDITOR='vim'

# ******************************************************************************
# HISTORY
# ******************************************************************************

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt extended_history hist_ignore_dups hist_ignore_space hist_verify share_history

# ******************************************************************************
# OPTIONS
# ******************************************************************************

setopt auto_cd auto_pushd pushd_ignore_dups interactive_comments
setopt correct

# ******************************************************************************
# COMPLETION
# ******************************************************************************

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# ******************************************************************************
# KEYS
# ******************************************************************************

bindkey -e
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

# ******************************************************************************
# PROMPT
#
# » dir/subdir [branch ✔]:
# ******************************************************************************

autoload -Uz colors vcs_info && colors
setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:git:*' stagedstr '*'
zstyle ':vcs_info:git:*' formats '%b' '%c%u'
zstyle ':vcs_info:git:*' actionformats '%b|%a' '%c%u'

function _prompt_vcs_info() {
  vcs_info
  GIT_PROMPT=''
  [[ -z $vcs_info_msg_0_ ]] && return
  if [[ -n $vcs_info_msg_1_ ]]; then
    GIT_PROMPT=" %F{green}[$vcs_info_msg_0_ %F{red}%B⚡%b%F{green}]%f"
  else
    GIT_PROMPT=" %F{green}[$vcs_info_msg_0_ ✔]%f"
  fi
}
precmd_functions+=(_prompt_vcs_info)

PROMPT='%F{blue}» %F{cyan}%2c%f${GIT_PROMPT}: '

ls -G >/dev/null 2>&1 && export CLICOLOR=1

# ******************************************************************************
# TOOLS
# ******************************************************************************

# mise manages ruby/node versions (reads .ruby-version, .nvmrc, .tool-versions)
command -v mise >/dev/null && eval "$(mise activate zsh)"

# pipx and other user-installed binaries
export PATH="$HOME/.local/bin:$PATH"

source ~/.zsh/aliases.zsh
source ~/.zsh/functions.zsh
