{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      neovim-nightly-overlay,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages.default = pkgs.symlinkJoin {
          name = "nvim";
          buildInputs = [ pkgs.makeWrapper ];
          paths = [ neovim-nightly-overlay.packages.${pkgs.stdenv.hostPlatform.system}.default ];
          postBuild = ''
            		wrapProgram $out/bin/nvim \
            			--append-flags "-u ${./init.lua}"
          '';
        };

      }
    );
}
