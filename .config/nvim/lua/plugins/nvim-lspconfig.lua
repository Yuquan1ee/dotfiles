local config = function()
  -- Configure diagnostics (Neovim 0.11+ API)
  vim.diagnostic.config({
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = "❌",
        [vim.diagnostic.severity.WARN] = "⚠️",
        [vim.diagnostic.severity.HINT] = "💡",
        [vim.diagnostic.severity.INFO] = "ℹ️",
      },
    },
    virtual_text = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
  })
end

return {
  "neovim/nvim-lspconfig",
  config = config,
  lazy = false,
  dependencies = {
    "windwp/nvim-autopairs",
    "williamboman/mason.nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
  },
}
