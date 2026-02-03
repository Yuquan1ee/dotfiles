local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
require('config.globals')
require('config.options')
require('config.keymaps')
require('config.autocmds')
local opts = {
	defaults = {
		lazy = true,
	},
	install = {
		colorscheme = { "nightfox" }
	},
	rtp = {
		disabled_plugins = {
	"gzip",
	"machit",
	"matchparen",
	"netrwPlugin",
	"tarPlugin",
	"tohtml",
	"tutor",
	"zipPlugin",
		}
	},
	change_detection = {
		notify = true,
	},
}

require("lazy").setup('plugins',opts)

-- Global LSP settings
vim.lsp.config('*', {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  on_attach = require('util.lsp').on_attach,
})

-- Enable language servers
vim.lsp.enable({ 'lua_ls', 'pyright', 'dockerls', 'ts_ls', 'marksman' })

