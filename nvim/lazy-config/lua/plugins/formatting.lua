return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "ruff_format" },
      go = { "goimports", "gofumpt" },
      proto = { "buf" },
    },
  },
}
