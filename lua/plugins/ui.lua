return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
]],
        },
      },
      animate = { enabled = true, duration = 8, easing = "linear" },
      scroll = { enabled = true, duration = 8 },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons", "folke/noice.nvim" },
    opts = function()
      local icons = require("lazyvim.config").icons
      return {
        options = {
          theme = "tokyonight",
          globalstatus = true,
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          disabled_filetypes = { statusline = { "dashboard", "alpha" } },
        },
        sections = {
          lualine_a = { { "mode", icon = "" } },
          lualine_b = { "branch" },
          lualine_c = {
            {
              "diagnostics",
              symbols = {
                error = icons.diagnostics.Error,
                warn = icons.diagnostics.Warn,
                info = icons.diagnostics.Info,
                hint = icons.diagnostics.Hint,
              },
            },
            { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
            { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
          },
          lualine_x = { "diff" },
          lualine_y = { "progress", "location" },
          lualine_z = { function() return " " .. os.date("%R") end },
        },
        extensions = { "neo-tree", "lazy" },
      }
    end,
  },
  {
    "gen740/SmoothCursor.nvim",
    event = "VeryLazy",
    opts = {
      type = "exp",
      fancy = { enable = false },
      cursor = "",
      texthl = "SmoothCursor",
      speed = 30,
      intervals = 20,
      threshold = 3,
      disable_float_win = true,
      disabled_filetypes = { "alpha", "neo-tree", "TelescopePrompt" },
    },
  },
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    opts = {
      mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
      hide_cursor = true,
      stop_eof = true,
      respect_scrolloff = false,
      cursor_scrolls_alone = true,
      duration_multiplier = 1.0,
      easing = "quadratic",
    },
  },
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("transparent").setup({
        groups = { "Normal", "NormalNC", "Comment", "Constant", "Special", "Identifier", "Statement", "PreProc", "Type", "Underlined", "Todo", "String", "Function", "Conditional", "Repeat", "Operator", "Structure", "LineNr", "NonText", "SignColumn", "CursorLineNr", "EndOfBuffer" },
        extra_groups = { "NormalFloat", "NvimTreeNormal", "NvimTreeNormalNC", "TelescopeNormal", "TelescopeBorder", "WhichKeyFloat", "LazyNormal", "MasonNormal" },
      })
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function() require("transparent").clear_prefix("NormalFloat") end,
      })
    end,
  },
}