alias asdf="clear; pwd; echo; git branch; git status"
alias g.branch="git branch | grep '*' | tr '*' ' ' | tr -d '[:space:]'"

function g.push
    git push origin (g.branch)
end

function g.pull
    git pull origin (g.branch)
end
