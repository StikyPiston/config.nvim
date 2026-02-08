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

          installPhase = ''
            mkdir -p $out
            cp -r $src $out/config
            chmod -R u+rwX,go+rX $out/config
          '';

          postBuild = ''
            		wrapProgram $out/bin/nvim \
            			--append-flags "-u $out/config/init.lua"
          '';
        };

      }
    );
}
