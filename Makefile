setup:
	# install nix
	# then run this
	nix-env ./default.nix

stow:
	stow --verbose --restow --target=$HOME/.config config/

delete:
	stow --verbose --delete --target=$HOME/.config config/
