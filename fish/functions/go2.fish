function j2
    set location $argv[1]
    set dev_dir ~/Dev
    switch $location
        case dev
            cd $dev_dir
        case code
            cd $dev_dir/code
        case projects
            cd $dev_dir/code/projects
        case config
            cd $dev_dir/config
        case tools
            cd $dev_dir/tools
        case environments
            cd $dev_dir/environments
        case analysis
            j2 environments
            cd analysis
        case current
            cd $current
        case '*'
            echo I do not know of any location named $location
    end
end

function ssh2
  set server $argv[1]
    switch $server
        case '*'
            echo I do not know of any server named $server
    end
end
