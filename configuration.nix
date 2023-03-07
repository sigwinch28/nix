{ pkgs, ... }:
{
  nix.package = pkgs.nixFlakes;
  nix.useDaemon = true;

  programs.bash.enable = false;

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
    };

    casks = [ ];
  };

  users.users.joe = {
    home = "/Users/joe";
  };
}
