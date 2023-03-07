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

  #homebrew = {
  #  enable = true;
  #
  #  onActivation = {
  #    autoUpdate = true;
  #    upgrade = true;
  #  };
  #
  #  casks = [ ];
  #};

  users.users.joe = {
    home = "/Users/joe";
  };
}
