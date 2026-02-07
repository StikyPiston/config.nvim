{
  pkgs,
  wrappers,
  inputs,
  ...
}:

wrappers.lib.wrapPackage {
  inherit pkgs;
  package = inputs.neovim-nightly-overlay.packages.${pkgs.stenv.hostPlatform.system}.default;
  flags = {

  };
}
