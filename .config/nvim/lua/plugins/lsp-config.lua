LSPS = { "lua_ls", "clangd", "harper_ls", "pylsp", "jdtls", "ts_ls", "cssls", "html" }

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = LSPS,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      for _, lsp in ipairs(LSPS) do
        lspconfig[lsp].setup({})
      end
    end,
  },
}
