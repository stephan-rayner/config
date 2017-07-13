alias cls="clear; ls"
alias cla="clear; ls -alh"
alias sfish="source ~/.config/fish/config.fish"

# Sourcing Modules
source ~/.config/fish/functions/git.fish

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

function j2dev
    #cd ~/dev/sandbox/echosec.dev
end


# function fish_prompt
#     if [ (whoami) = 'root' ]
#   	# something simple for root user
#       	printf '%sROOT::[%s]%s :: %s' (set_color --bold red) (pwd) (set_color red) (set_color normal)
#     else
#         set last_status $status
#         set_color 0FF
#         printf '(development) %s' (prompt_pwd)
#         set_color normal
#         printf '%s ' (__fish_git_prompt)
#         echo -n ':: '
#        	set_color normal
#     end
# end
