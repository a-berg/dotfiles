{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
        stow
        neovim
        exa
        starship
        kitty
        fish
        iosevka
      ];
    };
  };
}
