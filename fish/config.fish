# Data Science Dev Box

function asdf
    clear
    git branch
    git status
end

function cls
    clear
    ls
end

function unison-clean
    cd ~/.unison;
    rm *;
    cd ~;
end

function cla
    clear
    ls -alh
end

function sys
    clear;
    echo "===========================================================";
    free -m;
    echo "===========================================================";
    df -h;
end

function roll_db
    # https://www.digitalocean.com/community/tutorials/how-to-create-a-new-user-and-grant-permissions-in-mysql
    mysql -p -e "DROP DATABASE echosec; CREATE DATABASE echosec; SHOW DATABASES;";
end

function j2dev
    #cd ~/dev/sandbox/echosec.dev
end


function fish_prompt
    if [ (whoami) = 'root' ]
  	# something simple for root user
      	printf '%sROOT::[%s]%s :: %s' (set_color --bold red) (pwd) (set_color red) (set_color normal)
    else
        set last_status $status
        set_color 0FF
        printf '(development) %s' (prompt_pwd)
        set_color normal
        printf '%s ' (__fish_git_prompt)
        echo -n ':: '
       	set_color normal
    end
end
