return {
  -- Disable animations in Snacks.nvim (the new default in LazyVim)
  {
    "folke/snacks.nvim",
    opts = {
      animate = { enabled = false },
      scroll = { enabled = false },
    },
  },

  -- Disable cursor trailing/smearing plugins
  {
    "sphamba/smear-cursor.nvim",
    enabled = false,
  },
  {
    "gen740/SmoothCursor.nvim",
    enabled = false,
  },

  -- Optimize Flash.nvim for instant line teleports
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        char = { jump_labels = true },
      },
      label = {
        rainbow = { enabled = false },
      },
    },
  },
}
