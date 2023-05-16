{ config, pkgs, ... }: {
  home.stateVersion = "22.11";

  home.packages = with pkgs; [
    (aspellWithDicts (ds: [ ds.en ]))
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
    functions = {
      starship_transient_prompt_func = ''
        starship module character
      '';
    };
    interactiveShellInit = ''
      enable_transience
    '';
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
      sudo.disabled = false;
    };
  };
}
