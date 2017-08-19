function j2
    set location $argv[1]
    switch $location
        case dev
            cd ~/dev
        case code
            cd ~/dev/code
        case config
            cd ~/dev/config
        case tools
            cd ~/dev/tools
        case environments
            cd ~/dev/environments
        case analysis
            j2 environments
            cd analysis
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
