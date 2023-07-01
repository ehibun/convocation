{ config, pkgs, ... }:

{
  stylix.image = pkgs.fetchurl {
    url = "https://www.pixelstalk.net/wp-content/uploads/images6/Cool-4K-Minimalist-Background.jpg";
    sha256 = "sha256-0ZqJ3TL7QkPOaEHXbHiyU/m5/onoF3DOuhVeYix0g/M=";
  };
  stylix.polarity = "dark";
}