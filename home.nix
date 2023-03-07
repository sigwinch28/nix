{ config, pkgs, ... }: {
  home.stateVersion = "22.11";

  home.packages = with pkgs; [
    atkinson-hyperlegible
    coreutils
    curl
    gh
    git
    htop
    (iosevka-bin.override { variant = "ss08"; })
    k9s
    wget
  ];

  programs.direnv.enable = true;

  programs.fish = {
    enable = true;
  };

  programs.git = {
    enable = true;
    userName = "Joe Harrison";
    userEmail = "joe@sigwinch.uk";
  };

  programs.starship = {
    enable = true;
    settings = {
      character = {
        success_symbol = "🍊";
        error_symbol = "💩";
      };

      hostname.ssh_only = false;

      status.disabled = false;
    };
  };
}
