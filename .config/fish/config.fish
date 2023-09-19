begin
    set --local AUTOJUMP_PATH $HOME/.local/bin/autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/aberges/mambaforge/bin/conda
    eval /home/aberges/mambaforge/bin/conda "shell.fish" "hook" $argv | source
end

if test -f "/home/aberges/mambaforge/etc/fish/conf.d/mamba.fish"
    source "/home/aberges/mambaforge/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<

set -gx PATH $PATH $HOME/.krew/bin

starship init fish | source


# custom functions
function mkcd
  if test -z $argv
    echo "Usage: mkcd <directory>"
    return 1
  end

  mkdir -p $argv[1]
  cd $argv[1]
end
