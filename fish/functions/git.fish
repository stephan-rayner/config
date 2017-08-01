alias asdf="clear; pwd; echo; git branch; git status"
alias g.branch="git branch | grep '*' | tr -d '* [:space:]'"

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
