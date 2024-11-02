return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "hrsh7th/cmp-nvim-lsp" }
  },
  config = function()
    return require("config.lsp-config")
  end
}
