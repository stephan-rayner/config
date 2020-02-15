alias cls="clear; pwd; echo; ls"
alias cla="clear; pwd; echo; ls -alh"
alias sfish=". ~/.config/fish/config.fish"

# Sourcing Modules
# ===============================================================
. ~/.config/fish/functions/git.fish
. ~/.config/fish/functions/go2.fish
. ~/.config/fish/functions/python.fish
. ~/.config/fish/functions/sublime.fish
. ~/.config/fish/functions/sys.fish
. ~/.config/fish/functions/time.fish
. ~/.config/fish/functions/ls.fish

if test -e ~/.config/fish/functions/work_specific.fish
    . ~/.config/fish/functions/work_specific.fish
end


# ===============================================================
switch (uname)
case Linux
    alias pbcopy="xclip -sel clip"
end

