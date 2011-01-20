# My aliases
alias ss='./script/server'
alias ss1='./script/server -p 3001'
alias sc='./script/console'
alias sg='./script/generate'
alias postgres_start='pg_ctl -D ~/.pgdata -l ~/.pgdata/psql.log start'
alias postgres_stop='pg_ctl -D ~/.pgdata stop'
alias restart='touch tmp/restart.txt'
alias ajaxrdoc="rdoc --fmt ajax --exclude '.*generator.*' --exclude '.*test.*' --exclude '.*spec.*'"
alias devlog='tail -200 -f log/development.log'
alias testlog='tail -200 -f log/test.log'
alias gvim='mvim -p'
alias rebase='git fetch; git rebase origin/master'
alias extip='curl icanhazip.com'

function gitdays {
  git log --author=Tim --reverse --since="$@ days ago" --pretty="format:%n%Cgreen%cd%n%n%s%n%b%n---------------------------------------------" 
}

# accepts a css file and compacts the delcarations to one line
function css_compact {
  cat $@ | css2sass | sass -t compact > $@
}

# hamlizes whatever is on the clipboard
function pbhaml {
  pbpaste | html2haml | pbcopy
}

function md {
  markdown.pl $@ > /tmp/generated_by_markdown.html; open /tmp/generated_by_markdown.html
}

# Rails

alias devlog='tail -200 -f log/development.log'
alias log='tail -f log/development.log'
alias restart='touch tmp/restart.txt'
alias rc='./script/rails console'
alias rg='./script/rails generate'
alias rmate='mate app config doc db features lib public script spec test stories liquid'
alias rs='./script/rails server'
alias sc='./script/console'
alias sg='./script/generate'
alias sp='./script/spec -cfs'
alias ssd='./script/server --debugger'
alias testlog='tail -200 -f log/test.log'

# Git

alias gitrm='git ls-files --deleted | xargs git rm'
alias gitx='gitx --all'
alias gpci='git-pair commit'
alias gp='git pair'
alias push='git push'
alias rebase='git fetch; git rebase origin/master'
alias st='git status'
alias gs='git status'
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias go='git co'

