# My aliases
alias devlog='tail -200 -f log/development.log'
alias testlog='tail -200 -f log/test.log'

# git
alias st='git status'
alias ga='git add'
alias gc='git commit --verbose'
alias go='git co'

# delete local branches already merged into the default branch, prune remotes
alias gitflush='git branch --merged | grep -vE "^\*|^\s*(master|main|trunk)$" | xargs git branch -d; git remote prune origin'

# ruby
alias be='bundle exec'
alias rspec="nocorrect rspec"
alias bundle="nocorrect bundle"
