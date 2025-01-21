return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      cpp = { "clang_format" },
      c = { "clang_format" },
      python = { "black", "isort" },
      lua = { "stylua" },
      bash = { "shfmt" },
      shell = { "shfmt" },
      java = { "clang_format" },
      markdown = { "prettier" },
      html = { "prettier" },
      typescript = { "prettier" },
      javascript = { "prettier" },
      css = { "prettier" },
    },
  },
}
