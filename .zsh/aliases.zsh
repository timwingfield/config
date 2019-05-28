# My aliases
alias devlog='tail -200 -f log/development.log'
alias testlog='tail -200 -f log/test.log'

# git
# alias gitrm='git ls-files --deleted | xargs git rm'
# alias gitx='gitx --all'
# alias gpci='git-pair commit'
# alias gp='git pair'
# alias push='git push'
# alias rebase='git fetch; git rebase origin/master'
# alias st='git status'
# alias gs='git status'
# alias ga='git add '
# alias gb='git branch '
# alias gc='git commit'
# alias gd='git diff'
# alias gdc='git diff --cached'
# alias go='git co'
# alias t='todo.sh -d ~/todo.cfg'

alias gitflush='git branch --merged master | grep -v master | xargs git branch -d && git remote prune origin'
alias forgit='git branch -r --merged integration | grep -v origin/integration | xargs git branch -d -r'

alias whoamtmate="tmate display -p '#{tmate_ssh}'"

alias ctags="`brew --prefix`/bin/ctags"

alias rspec="nocorrect rspec"
alias bundle="nocorrect bundle"
alias storybook="nocorrect storybook"

alias mux="tmuxinator"

alias vpneast="sudo openconnect -u timothy.wingfield vpneng-east.fireeye.com"
alias vpnwest="sudo openconnect -u timothy.wingfield vpneng-i.fireeye.com"
