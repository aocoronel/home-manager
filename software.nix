{pkgs, ...}: {
  home.packages = with pkgs; [

    # === Browsers ===

    # librewolf
    # ungoogled-chromium
    # lynx
    # floorp
    # firefox
    # ddgr
    # brave
    # nyxt
    # qutebrowser
    # vivaldi
    # w3m

    # === CLI ===

    # age
    # atomicparsley
    # bash-completion
    # bat
    # bc
    # borgbackup
    # bpytop
    # brightnessctl
    # btop
    # cava
    # cmatrix
    # cmus
    # cryptsetup
    # curl
    # direnv
    # expect
    # eza
    # fastfetch
    # fd
    # ffmpeg
    # figlet
    # fzf
    # gh
    # git
    # git-crypt
    # git-filter-repo
    # github-cli
    # gitleaks
    # gnupg
    # gnutar
    # gocryptfs
    # gvfs
    # home-manager
    # imagemagick
    # jmtpfs
    # jq
    # just
    # killall
    # lazygit
    # less
    # libargon2
    # lsof
    # man
    # moreutils
    # mtpfs
    # mupdf
    # mupdf-tools
    # navi
    # ncdu
    # nmap
    # oath-toolkit
    # odt2txt
    # oh-my-posh
    # onefetch
    # openssl
    # pandoc-cli
    # parallel
    # pinentry-curses
    # pulseaudio
    # pwgen
    # ranger
    # rclone
    # restic
    # ripgrep
    # rmlint
    # rsync
    # sd
    # sqlite
    # srm
    # stow
    # tig
    # tldr
    # tmux
    # tmuxp
    # tree
    # udiskie
    # ueberzugpp
    # unzip
    # wget
    # which
    # yazi
    # yt-dlp
    # zip
    # zoxide

    # === Emacs ===
    # emacs
    # emacs-lsp-booster
    # ffmpegthumbnailer
    # graphviz
    # mediainfo
    # poppler_utils
    # vips

    # === Email Client ===
    # isync
    # mutt-wizard
    # neomutt
    # thunderbird

    # === Media Editor ===

    # gimp
    # shotcut
    # tenacity
    # sox

    # === Media Player ===

    # flameshot
    # freetube
    # mpv
    # newsboat
    # obs-studio
    # vlc

    # === Neovim ===

    # neovide
    # neovim

    # === Office ===

    # libreoffice
    # zathura

    # === Passwords ===

    # (pkgs.pass.withExtensions (exts: [
    #   pkgs.passExtensions.pass-otp
    #   pkgs.passExtensions.pass-tomb
    # ]))
    # lesspass-cli
    # steghide
    # tomb
    # zbar

    # === Taskwarrior ===

    # taskwarrior2
    # vit

    # === Blog ===
    # zola

    # === GUI ===
    # alacritty
    # borgbackup
    # bottles
    # brave
    # buku
    # ddgr
    # evince
    # firefox
    # floorp
    # foot
    # freetube
    # gimp3
    # gnome-font-viewer
    # gnome-maps
    # kitty
    # libreoffice
    # librewolf
    # lynx
    # megacmd
    # mermaid-cli
    # mpv
    # newsboat
    # nyxt
    # obs-studio
    # pandoc
    # qutebrowser
    # rclone
    # restic
    # seahorse
    # taskchampion-sync-server
    # ungoogled-chromium
    # vivaldi
    # vlc
    # w3m
    # wine
    # zathura
    # foot
    # zotero
];

  # programs.neovim = {
  #   enable = true;
  #   extraPackages = with pkgs; [
  #   # alejandra
  #   # bash-language-server
  #   # clang-tools
  #   # docker-compose-language-service
  #   # dockerfile-language-server-nodejs
  #   # harper
  #   # java-language-server
  #   # kotlin-language-server
  #   # lua-language-server
  #   # markdown-oxide
  #   # marksman
  #   # neovide
  #   # sqls
  #   # typescript-language-server
  #   # yaml-language-server
  #   ];
  # };
}
