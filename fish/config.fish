alias cls="clear; pwd; echo; ls"
alias cla="clear; pwd; echo; ls -alh"
alias sfish="source ~/.config/fish/config.fish"

# Sourcing Modules
# ===============================================================
source ~/.config/fish/functions/git.fish
source ~/.config/fish/functions/go2.fish
source ~/.config/fish/functions/python.fish
source ~/.config/fish/functions/sublime.fish
source ~/.config/fish/functions/sys.fish

if test -e ~/.config/fish/functions/ml_tools.fish
    source ~/.config/fish/functions/ml_tools.fish
end

if test -e ~/.config/fish/functions/work_specific.fish
    source ~/.config/fish/functions/work_specific.fish
end

function sfish
    source ~/.config/fish/config.fish
end

# ===============================================================

