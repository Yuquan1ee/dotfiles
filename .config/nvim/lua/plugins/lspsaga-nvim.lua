return {
  "glepnir/lspsaga.nvim",
  lazy = false,
  config = function()
    require("lspsaga").setup({
      ui = {
        border = "rounded",
        code_action = "💡",
      },
      scroll_preview = {
        scroll_down = "<C-j>",
        scroll_up = "<C-k>",
      },
      finder = {
        keys = {
          toggle_or_open = "<CR>",
          vsplit = "s",
          split = "i",
          quit = "q",
        },
      },
      definition = {
        keys = {
          edit = "<CR>",
          vsplit = "<C-v>",
          split = "<C-x>",
          quit = "q",
        },
      },
      outline = {
        win_position = "right",
        keys = {
          toggle_or_jump = "o",
          quit = "q",
        },
      },
    })
  end,
}
