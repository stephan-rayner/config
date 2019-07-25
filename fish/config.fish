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

if test -e ~/.config/fish/functions/ml_tools.fish
    . ~/.config/fish/functions/ml_tools.fish
end

if test -e ~/.config/fish/functions/work_specific.fish
    . ~/.config/fish/functions/work_specific.fish
end

function sfish
    . ~/.config/fish/config.fish
end

# ===============================================================
switch (uname)
case Linux
    alias pbcopy="xclip -sel clip"
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/stephanrayner/google-cloud-sdk/path.fish.inc' ]; . '/Users/stephanrayner/google-cloud-sdk/path.fish.inc'; end
