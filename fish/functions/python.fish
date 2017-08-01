alias py=python3

function py.module
    set dir $argv[1]
    mkdir $dir
    cd $dir
    touch __init__.py
end

function py.profile
    py -m cProfile $argv[1]
end
