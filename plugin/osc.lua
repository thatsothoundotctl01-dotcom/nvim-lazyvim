-- ~/.config/nvim/lua/plugins/transparent.lua

return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("transparent").setup({
      groups = {
        "Normal", "NormalNC", "Comment", "Constant", "Special",
        "Identifier", "Statement", "PreProc", "Type", "Underlined",
        "Todo", "String", "Function", "Conditional", "Repeat",
        "Operator", "Structure", "LineNr", "NonText", "SignColumn",
        "CursorLineNr", "EndOfBuffer",
      },
      extra_groups = {
        "NormalFloat",
        "NvimTreeNormal",
        "NvimTreeNormalNC",
        "TelescopeNormal",
        "TelescopeBorder",
        "WhichKeyFloat",
        "LazyNormal",
        "MasonNormal",
      },
      exclude_groups = {},
      on_clear = function() end,
    })

    -- Reapply after colorscheme changes
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = function()
        require("transparent").clear_prefix("NormalFloat")
      end,
    })
  end,
}

