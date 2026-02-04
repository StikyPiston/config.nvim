{
  config,
  pkgs,
  inputs,
  ...
}:

{
  vim = {
    # Options

    lineNumberMode = "number";
    options = {
      signcolumn = "yes";
      wrap = false;
      tabstop = 4;
      cursorline = true;
      shiftwidth = 4;
      scrolloff = 999;
    };

    ui.borders.globalStyle = "rounded";
    preventJunkFiles = true;
    clipboard = {
      enable = true;
      registers = "unnamedplus";
    };
    globals.mapleader = " ";

  };
}
