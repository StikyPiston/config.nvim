{
  config,
  pkgs,
  inputs,
}:

{

  vim = {

    keymaps = [

      # Disable hjkli
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "h";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "j";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "k";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "l";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "i";
        action = "<Nop>";
      }

      # Map IJKL as movement keys
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "i";
        action = "k";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "k";
        action = "j";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "j";
        action = "h";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "l";
        action = "l";
      }

      # Map ; → i in normal mode
      {
        mode = "n";
        key = ";";
        action = "i";
      }

      # Map leader w and leader q to write and quit
      {
        mode = "n";
        key = "<leader>w";
        action = ":w<CR>";
      }
      {
        mode = "n";
        key = "<leader>q";
        action = ":q<CR>";
      }
    ];

  };
}
