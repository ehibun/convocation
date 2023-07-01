{ config, pkgs, lib, ... }:

with lib.hm.gvariant;

{
  home.packages = with pkgs; [
    blackbox-terminal
  ];

  dconf.settings = {
    "com/raggesilver/BlackBox" = {
      easy-copy-paste = true;
      floating-controls = false;
      font = "JetBrainsMono Nerd Font 10";
      headerbar-drag-area = false;
      hide-single-tab = true;
      opacity = mkUint32 100;
      pretty = false;
      show-headerbar = true;
      stealth-single-tab = true;
      terminal-cell-height = 1.2;
      terminal-cell-width = 1.0;
      # terminal-padding = mkTuple [ mkUint32 12 mkUint32 12 ]; # broken due to dconf2nix
      theme-dark = "Dracula";
      theme-light = "Dracula Light";
      window-show-borders = false;
    };
  };
}