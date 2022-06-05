{
  pkgs ? import <nixpkgs> {}
}:

[
  # Daily drivers
  pkgs.fish
  pkgs.kitty
  pkgs.neovim
  pkgs.starship
  # Fonts
  pkgs.iosevka # "only" v14.0.1
  pkgs.open-sans
  # Useful programs
  pkgs.direnv
  pkgs.exa
  pkgs.stow
  pkgs.ghq
  pkgs.ripgrep
  pkgs.autojump
  pkgs.zoxide  # TODO: shell add
  # Nix Flakes
  pkgs.nixFlakes
]
