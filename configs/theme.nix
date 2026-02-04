{ config, pkgs, inputs, ... }:

{

  vim = {

    # Theming
    theme.enable = true;
    theme.name = "catppuccin";
    theme.style = "mocha";
    theme.transparent = true;

  };

}
