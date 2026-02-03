return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    vim.cmd([[hi StatusLine ctermbg=0 cterm=NONE]])
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
