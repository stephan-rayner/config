
alias asdf="clear; pwd; echo; git branch; git status"

alias g.branch="git branch | grep '*' | tr -d '* [:space:]'"

alias g.today="git log --before (date) --after (date --date yesterday)"
alias g.log="clear; git log --graph --decorate=short --abbrev-commit"

alias g.conflict="grep -r '<<<<<<<' *"

function g.push
    git push origin (g.branch)
end


function g.pull
    git pull origin (g.branch)
end


function g.ignore
    set EDITORS 'vim,visualstudiocode,sublimetext'
    set LANGS $argv[1]
    wget https://www.gitignore.io/api/$EDITORS,$LANGS
    mv $EDITORS,$LANGS ./.gitignore
end


function g.fetch-all
    bash (dirname (status --current-filename))/scripts/git-fetch-all.sh
end


function g.clean-merged
    git branch --merged master | grep -v '^[ *]*master$' | xargs git branch -d
end
