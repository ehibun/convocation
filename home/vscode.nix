{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    rnix-lsp
  ];

  programs = {
    vscode = {
      enable = true;
      package = pkgs.vscodium-fhs;
      userSettings = {
        nix.enableLanguageServer = true;
        workbench.colorTheme = "Monokai";
        workbench.iconTheme = "material-icon-theme";
        editor.fontFamily = "'JetBrainsMono', 'monospace', 'Noto Color Emoji'";
        editor.fontSize = 16;
        explorer.confirmDelete = false;
        editor.tabSize = 2;
        editor.tabCompletion = true;
        explorer.confirmDragAndDrop = false;
        diffEditor.ignoreTrimWhitespace = false;
        editor.stickyTabStops = true;
        editor.insertSpaces = false;
        workbench.tree.indent = 10;
        redhat.telemetry.enabled = false;
        git.enableCommitSigning = true;
        window.zoomLevel = 1;
        "[css]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
        prettier.useTabs = false;
        editor."cursorBlinking" = "solid";
        editor.fontLigatures = true;
      };
      extensions = with pkgs.vscode-extensions; [
        # Languages
        jnoortheen.nix-ide tamasfe.even-better-toml redhat.vscode-yaml
        # Formatters
        esbenp.prettier-vscode
        # Themes
        pkief.material-icon-theme
      ];
    };
  };
}