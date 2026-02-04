{
  config,
  pkgs,
  inputs,
  ...
}:

{
  vim = {

    # LSP stuff

    lsp.enable = true;
    lsp.trouble.enable = true;
    autocomplete.blink-cmp.enable = true;

    languages = {
      lua.enable = true;
      lua.lsp.lazydev.enable = true;
      ruby.enable = true;
      go.enable = true;
      markdown.enable = true;
      typst.enable = true;
    };

  };

}
