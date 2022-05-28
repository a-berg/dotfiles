# dotfiles!

The idea is to use `Nix` to manage my packages, and keep it low-tech (meaning:
no `home-manager` if possible).

## Usage

The principal objective of the whole repository is to be able to use:

```bash
make
```

> (or something similar)

and get the environment up and running in any new machine.

## Ergonomics

The problem of just using git to configure things is that it's not ergonomic:
keeping both a _work_ and _home_ configurations synced means that I'm going to
have to do a lot of housekeeping. Hopefully some fish functions will do the
trick.

## Packages

A non-exhaustive list:

- stow for stowing these dotfiles.
- neovim as `$EDITOR`.
- kitty as terminal emulator.
- fish as shell.
- nix as the package manager (regardless of the distribution used)
- starship for prompt
- Iosevka as font family (with Nerd Symbols patched in via kitty configuration)
