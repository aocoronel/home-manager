{
  description = "Home Manager Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # My Scripts
    leta-searcher.url = "github:aocoronel/search-sh";
  };

  outputs =
    { nixpkgs, home-manager, leta-searcher, ... }:
    let
      systemSettings = {
        hostname = "beelzebub"; # desktop,nixos,home
        timezone = "America/Sao_Paulo"; # America/Sao_Paulo,Asia/Tokyo,America/Chicago
        locale = "en_US.UTF-8"; #en_US.UTF-8
        extra_locale = "pt_BR.UTF-8"; # en_US.UTF-8
        keyboard = "us"; # us,es
        cups = "false"; # true,false
      };
      # ----- USER SETTINGS ----- #
      # This user is in wheel group
      userSettings = {
        username = "aoc"; # aocoronel,admin,user
        name = "Augusto Coronel"; # Augusto Coronel,Admin,User
        email = "aoc@getgoogleoff.me"; # john@doe.com
        profile = "desktop"; # desktop,laptop
        homeDir = "/home/${userSettings.username}";
        editor = "neovide"; # emacs,neovide
        themeName = "rose-pine";
        iconName = "oomox-rose-pine";
        iconTheme = pkgs.rose-pine-icon-theme;
        gtkTheme = pkgs.rose-pine-gtk-theme;
        displayManager = "ly"; # ly,sddm
        wm = "hyprland"; # hyprland,gnome,plasma
        term = "alacritty"; # alacritty,ghostty,foot
      };
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
      system = "x86_64-linux";
    in
    {
      homeConfigurations.aoc = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [ ./home.nix ];

        # modules = [
        #   (./. + "/profiles/" + ("/" + userSettings.profile) + "/home.nix")
        # ];

        extraSpecialArgs = {
          inherit pkgs;
          inherit system;
          inherit systemSettings;
          inherit userSettings;
          inherit leta-searcher;
        };

      };
    };
}
