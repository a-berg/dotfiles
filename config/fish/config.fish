begin
    set --local AUTOJUMP_PATH $HOME/.local/bin/autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/adrian/mambaforge/bin/conda
    eval /home/adrian/mambaforge/bin/conda "shell.fish" "hook" $argv | source
end

if test -f "/home/adrian/mambaforge/etc/fish/conf.d/mamba.fish"
    source "/home/adrian/mambaforge/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<
set -gx PATH $PATH $HOME/.krew/bin

starship init fish | source
# register-python-argcomplete --shell fish  pipx | source
zoxide init fish | source
# source $HOME/.nix-profile/etc/profile.d/nix.sh
