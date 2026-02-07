{
  pkgs,
  wrappers,
  inputs,
  ...
}:

{

  packages.x86_64-linux.default = pkgs.symlinkJoin {
    name = "neovim";
    buildInputs = [ pkgs.makeWrapper ];
    paths = [ inputs.neovim-nightly-overlay.packages.${pkgs.stdenv.hostPlatform.system}.default ];
    postBuild =
      ''
		wrapProgram $out/bin/nvim \
			--append-flags "-u ${./init.lua}"
      '';
  };

}
