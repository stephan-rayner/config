alias cls="clear; ls"
alias cla="clear; ls -alh"
alias sfish="source ~/.config/fish/config.fish"

# Sourcing Modules
source ~/.config/fish/functions/git.fish
source ~/.config/fish/functions/go2.fish

function sfish
    source ~/.config/fish/config.fish
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
