{pkgs,userSettings,...}: {
  home.file = {
    # ".screenrc".source = dotfiles/screenrc;
    ".tmuxprofile".text = ''
      $DEV
      $DEV/codeberg/
      $DEV/forgejo/
      $DEV/github/
    '';
    ".gnupg/gpg-agent.conf".text = ''
      pinentry-program ${pkgs.pinentry-curses}/bin/pinentry-curses
      max-cache-ttl 60480000
      default-cache-ttl 60480000
    '';
    # ".local/share/applications/ranger.desktop".text = ''
    #   [Desktop Entry]
    #   Name=Ranger File Manager
    #   Comment=Launch Ranger in Alacritty
    #   Exec=alacritty -e ranger
    #   Icon=utilities-terminal
    #   Terminal=false
    #   Type=Application
    #   Categories=System;FileManager;
    # '';
    ".local/share/applications/mpv.desktop".text = ''
      [Desktop Entry]
      Type=Application
      Name=Video viewer
      Exec=/usr/bin/mpv -quiet %f
    '';
    ".local/share/applications/nsxiv.desktop".text = ''
      [Desktop Entry]
      Type=Application
      Name=Image viewer
      Exec=/usr/bin/nsxiv -a %f
    '';
    ".local/share/applications/zathura.desktop".text = ''
      [Desktop Entry]
      Type=Application
      Name=PDF reader
      Exec=/usr/bin/zathura %u
    '';
    ".local/share/applications/yazi.desktop".text = ''
      [Desktop Entry]
      Name=Yazi File Manager
      Comment=Launch Yazi in Alacritty
      Exec=alacritty -e yazi
      Icon=utilities-terminal
      Terminal=false
      Type=Application
      Categories=System;FileManager;
    '';
  };
}
