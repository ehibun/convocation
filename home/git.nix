{ config, pkgs, lib, ... }:

{
  programs.git = {
    enable = true;
    userName = "Emily";
    userEmail = "emily@ehi.im";
  };
}