alias asdf="clear; pwd; echo; git branch; git status"
alias g.clone="git clone --recursive"
alias g.branch="git branch | grep '*' | tr -d '* [:space:]'"
alias g.today="git log --before (date) --after (date --date yesterday)"
alias g.log="clear; git log --graph --decorate=short --abbrev-commit"
alias g.conflict="grep -r '<<<<<<<' *"
alias g.branch.purge="git branch -d (git branch | grep -v master | grep -v '*' | tr -d ' ')"
alias g.now="git fetch; g.pull"

function g.push
    git push origin (g.branch)
end

function g.diff
    set preview "git diff $argv --color=always -- {-1}"
    git diff $argv --name-only | fzf -m --ansi --preview $preview --reverse
end

function g.pull
    git pull origin (g.branch) --rebase
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

function g.help
    set this_file ~/.config/fish/functions/git.fish
    if test (which bat)
        bat $this_file
    else
        cat $this_file
    end
end
