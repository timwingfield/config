# Comverge aliases => for Apollo change Locale to en-ZA for South Africa
# Rails aliases
alias zarc='NO_BIS=blah LOCALE=en-ZA be rails c'
alias zars='NO_BIS=blah LOCALE=en-ZA be rails s'
alias rdbm='rake db:migrate db:test:prepare'

# My aliases
alias ajaxrdoc="rdoc --fmt ajax --exclude '.*generator.*' --exclude '.*test.*' --exclude '.*spec.*'"
alias devlog='tail -200 -f log/development.log'
alias testlog='tail -200 -f log/test.log'
alias gvim='mvim -p'

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

# git
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
alias t='todo.sh -d ~/todo.cfg'

