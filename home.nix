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


  programs.fish = {
    enable = true;
  };

  programs.starship = {
    enable = true;
    settings = {
      character = {
        success_symbol = "🍊";
        error_symbol = "💩";
      };

      status.disabled = false;
    };
  };
}
