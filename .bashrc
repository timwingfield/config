alias ..="cd .."
alias b="cd -"

function gitdays { 
    git log --author=Tim --reverse --since="$@ days ago" --pretty="format:%n%Cgreen%cd%n%n%s%n%b%n---------------------------------------------"
}


# added by travis gem
[ -f /Volumes/Data/Users/Timbo/.travis/travis.sh ] && source /Volumes/Data/Users/Timbo/.travis/travis.sh
