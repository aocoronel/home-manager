alias fu := f-update
alias g := garbage
alias u := update

# Default Just
list:
  just --list

# Update flake.lock
f-update:
  nix flake update

# Rebuild Home Manager Config
hm-switch:
  home-manager switch --flake .#nixos

# View Home Manager Generations
hm-gen:
  home-manager generations

# Update Channels
update:
  sudo nix flake update;

# Git Pull
pull:
  git stash;
  git pull;
  git stash apply;

# Garbage Collect (7d)
garbage:
  nix-collect-garbage --delete-older-than 7d

# Install Home Manager (Deprecated)
hm-install:
  nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
  nix-channel --update
  nix-shell '<home-manager>' -A install
