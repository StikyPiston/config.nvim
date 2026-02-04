{
  configs,
  pkgs,
  inputs,
}:

{

  vim = {

    ui.noice = {

      enable = true;
      setupOpts.format.cmdline = {
        icon = "";
      };
      setupOpts.presets.command_palette = false;

    };

  };

}
