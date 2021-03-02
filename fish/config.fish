alias cls="clear; pwd; echo; ls"
alias cla="clear; pwd; echo; ls -alh"
alias sfish=". ~/.config/fish/config.fish"

# Sourcing Modules
# ===============================================================
source ~/.config/fish/functions/*.fish
source ~/.config/fish/completions/*.fish

# ===============================================================
switch (uname)
case Linux
    alias pbcopy="xclip -sel clip"
end

