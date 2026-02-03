local opts = {
  ensure_installed = {
    "lua_ls",
    "pyright",
    "dockerls",
    "ts_ls",
    "marksman",
  },
  automatic_installation = true,
}

return {
  "williamboman/mason-lspconfig.nvim",
  opts = opts,
  event = "BufReadPre",
  dependencies = "williamboman/mason.nvim",
}
