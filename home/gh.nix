{ config, pkgs, lib, ... }:

{
  programs.gh = {
    enable = true;
    enableGitCredentialHelper = true;
    settings = { 
      git_protocol = "ssh";
    };
  };
}
