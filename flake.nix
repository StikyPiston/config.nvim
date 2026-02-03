{

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = inputs: {

    packages."x86_64-linux".default =
      (inputs.nvf.lib.neovimConfiguration {
        pkgs = inputs.nixpkgs.legacyPackages."x86_64-linux";
        modules = [ ./nvf.nix ];
      }).neovim;

  };

}
