{
  pkgs ? import <nixpkgs> {}
}:

[
  # Daily drivers
  pkgs.fish
  pkgs.kitty
  pkgs.neovim
  pkgs.iosevka # "only" 14.0.1
  pkgs.starship
  # Useful programs
  pkgs.direnv
  pkgs.exa
  pkgs.stow
  pkgs.ghq
  # Nix Flakes
  pkgs.nixFlakes
]
