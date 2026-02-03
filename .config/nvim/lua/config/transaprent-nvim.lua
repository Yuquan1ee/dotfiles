return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    vim.cmd([[hi StatusLine ctermbg=0 cterm=NONE]])
    vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])  -- This line sets the overall background to transparent
    require("transparent").setup({ -- Optional, you don't have to
      groups = {
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Special",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Underlined",
        "Todo",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "LineNr",
        "SignColumn",
        "CursorLineNr",
        "EndOfBuffer",
      },
      extra_groups = {
        "NormalFloat",
        "TablineFill",
      },
      exclude_groups = {},
    })
  end
}
