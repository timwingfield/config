setopt APPEND_HISTORY 
setopt INC_APPEND_HISTORY 
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt complete_in_word         # Not just at the end
setopt always_to_end            # When complete from middle, move cursor
setopt nohup										# In general, we don't kill background jobs upon logging out
setopt prompt_subst
setopt auto_cd
setopt extendedglob
setopt hist_ignore_dups         # Don't enter command in history if it is duplicate of previous command
setopt hist_find_no_dups        # Don't display duplicates when searching commands
setopt inc_append_history       # Append history item as soon as command is executed, rather than waiting until the shell is killed
setopt nobeep                   # Kill the fscking beep!
