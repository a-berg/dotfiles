if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux XDG_CONFIG_HOME "$HOME/.config"
set -Ux EDITOR hx

fish_add_path -Ua ~/.ghcup/bin/
fish_add_path -Ua ~/.local/bin/
fish_add_path -Ua /opt/homebrew/opt/llvm/bin/

starship init fish | source
zoxide init fish | source
