{
  config,
  pkgs,
  inputs,
  ...
}:

{

  vim = {

    utility.snacks-nvim = {
      enable = true;
      setupOpts = {
        image.enabled = true;
        indent.enabled = true;
        lazygit.enabled = true;
        quickfile.enabled = true;
      };
    };

  };

}
