return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "folke/noice.nvim", -- optional: enables the recording/command status segment below
  },
  opts = function()
    local icons = require("lazyvim.config").icons

    return {
      options = {
        theme = "tokyonight", -- matches your install colorscheme
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
        lualine_x = {
          {
            ---@diagnostic disable-next-line: undefined-field
            function() return require("noice").api.status.command.get() end,
            cond = function()
              ---@diagnostic disable-next-line: undefined-field
              return package.loaded["noice"] and require("noice").api.status.command.has()
            end,
            color = { fg = "#ff9e64" },
          },
          {
            "diff",
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
          },
        },
        lualine_y = {
          { "progress", separator = " ", padding = { left = 1, right = 0 } },
          { "location", padding = { left = 0, right = 1 } },
        },
        lualine_z = {
          function() return " " .. os.date("%R") end,
        },
      },
      extensions = { "neo-tree", "lazy" },
    }
  end,
}
