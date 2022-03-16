begin
    set --local AUTOJUMP_PATH $HOME/.local/bin/autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/aberges/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
set -gx PATH $PATH $HOME/.krew/bin

starship init fish | source
