alias py=python3
alias py.profile="py -m cProfile"

function py.module
    set dir $argv[1]
    mkdir $dir
    cd $dir
    touch __init__.py
end

