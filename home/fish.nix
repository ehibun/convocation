{ config, pkgs, lib, ... }:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
      
      # Hydro config
      set -g hydro_fetch true
      set -g hydro_multiline true
    '';
    plugins = [
      { name = "hydro"; src = pkgs.fishPlugins.hydro.src; }
    ];
    shellAbbrs = {
      gst = "git status";
      gco = "git checkout";
    };
  };
}