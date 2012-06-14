alias ..="cd .."
alias b="cd -"

function gitdays { 
    git log --author=Tim --reverse --since="$@ days ago" --pretty="format:%n%Cgreen%cd%n%n%s%n%b%n---------------------------------------------"
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
