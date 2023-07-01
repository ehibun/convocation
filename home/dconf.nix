# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {

    "org/gnome/TextEditor" = {
      indent-style = "space";
      style-variant = "follow";
      tab-width = mkUint32 2;
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "gb" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 890 550 ];
    };

    "org/gnome/shell" = {
      favorite-apps = [ 
        "org.gnome.Epiphany.desktop"
        "org.gnome.Geary.desktop"
        "org.gnome.Calendar.desktop"
        "org.gnome.Music.desktop"
        "org.gnome.Photos.desktop"
        "org.gnome.Nautilus.desktop"
        "com.raggesilver.BlackBox.desktop"
      ];
      welcome-dialog-last-shown-version = "44.2";
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 859 374 ];
    };

  };
}
