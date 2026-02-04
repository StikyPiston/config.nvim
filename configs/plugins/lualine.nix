{
  config,
  pkgs,
  inputs,
  ...
}:

{

  vim = {

    # Lualine

    statusline.lualine = {
      enable = true;
      activeSection = {
        a = [ ''{ "mode" } '' ];
        b = [ ''{ "filename" } '' ];
        c = [ ];
        x = [
          ''{ "filetype" } ''
          ''{ "location" } ''
          ''{ "diff" } ''
        ];
        y = [
          ''{ "lsp_status" } ''
          ''{ "diagnostics" } ''
        ];
        z = [ ];
      };

      sectionSeparator = {
        left = "";
        right = "";
      };

      componentSeparator = {
        left = "";
        right = "";
      };
    };

  };
}
