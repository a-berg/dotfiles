if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux XDG_CONFIG_HOME "$HOME/.config"
set -Ux EDITOR hx

starship init fish | source
zoxide init fish | source
