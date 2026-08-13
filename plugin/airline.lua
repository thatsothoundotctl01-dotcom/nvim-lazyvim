       return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "tokyonight",
        globalstatus = true, -- one statusline for all windows, not per-split
        component_separators = "", -- no separator characters = clean look
        section_separators = "",
        disabled_filetypes = {
          statusline = { "alpha", "neo-tree", "dashboard" },
        },
      },

      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = { "diagnostics" },
        lualine_y = { "filetype" },
        lualine_z = { "location" },
      },

      -- Simpler statusline for inactive windows (less visual noise)
      inactive_sections = {
        lualine_c = { "filename" },
        lualine_x = {},
      },
    },
  },
}
