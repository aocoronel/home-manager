{
  pkgs,
  userSettings,
  ...
}: {
  imports = [
    # === User Configuration ===

    ./files.nix    # Write files across the system
    ./software.nix # Install programs

    # === Scripts ===

    ./scripts/leta-searcher.nix
  ];

  home.username = userSettings.username;
  home.homeDirectory = "/home/" + userSettings.username;

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.adwaita-icon-theme;
    name = "Adwaita";
    size = 24;
  };

  gtk = {
    enable = true;
    iconTheme = {
      name = userSettings.iconName;
      package = userSettings.iconTheme;
    };
    theme = {
      name = userSettings.themeName;
      package = userSettings.gtkTheme;
    };
  };

  services.udiskie.enable = true;
  services.udiskie.tray = "never";

  programs.home-manager.enable = true;

  home.sessionVariables = {
    EDITOR = userSettings.editor;
    TERMCMD = userSettings.term;
  };

  xdg = {
    userDirs = {
      enable = true;
      createDirectories = true;
      music = "${userSettings.homeDir}/media/music";
      videos = "${userSettings.homeDir}/media/videos";
      pictures = "${userSettings.homeDir}/media/pictures";
      templates = "${userSettings.homeDir}/templates";
      download = "${userSettings.homeDir}/downloads";
      documents = "${userSettings.homeDir}/documents";
      desktop = null;
      publicShare = null;
    };
  };

  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "application" = "pdf=zathura.desktop";
      "video/mkv" = "mpv.desktop";
      "video/mp4" = "mpv.desktop";
      "video/webm" = "mpv.desktop";
      "image/avif" = "nsxiv.desktop";
      "image/gif" = "nsxiv.desktop";
      "image/jpeg" = "nsxiv.desktop";
      "image/png" = "nsxiv.desktop";
      "image/webp" = "nsxiv.desktop";
      "text/html" = "zen-browser.desktop";
      "x-scheme-handler/http" = "zen-browser.desktop";
      "x-scheme-handler/https" = "zen-browser.desktop";
      "x-scheme-handler/about" = "zen-browser.desktop";
      "x-scheme-handler/unknown" = "zen-browser.desktop";
      "inode/directory" = "yazi.desktop";
    };
  };

  home.packages = with pkgs; [
    pinentry-curses
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  home.stateVersion = "25.05";
}
