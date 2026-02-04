{
  config,
  pkgs,
  inputs,
  ...
}:

{

  imports = [
	"./configs/binds.nix"
	"./configs/lsp.nix"
	"./configs/opts.nix"
	"./configs/plugins/lualine.nix"
	"./configs/plugins/mini.nix"
	"./configs/plugins/noice.nix"
	"./configs/plugins/snacks.nix"
    "./configs/theme.nix"
  ];

}
