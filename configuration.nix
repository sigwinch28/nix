{ pkgs, ... }:
{
  nix = {
    package = pkgs.nixFlakes;
    useDaemon = true;
    settings = {
      auto-optimise-store = true;
    };
      
    extraOptions = ''
      extra-nix-path = nixpkgs=flake:nixpkgs
      experimental-features = nix-command flakes
      bash-prompt-prefix = (nix:$name)\040
    '';
  };

  programs.bash.enable = false;
  programs.fish.enable = true;


  homebrew = {
    enable = true;
  
  #  onActivation = {
  #    autoUpdate = true;
  #    upgrade = true;
  #  };
  
    casks = [
      "discord"
      "lulu"
      "visual-studio-code"
    ];
  };

  users.users.joe = {
    home = "/Users/joe";
  };
}
