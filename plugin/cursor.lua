return {
  {
    "gen740/SmoothCursor.nvim",
    event = "VeryLazy",
    opts = {
      type = "exp", -- smooth ease-out motion, no multi-color trail
      fancy = {
        enable = false, -- turn OFF the rainbow trail
      },
      cursor = "", -- empty = use your terminal's real cursor shape
      texthl = "SmoothCursor",
      linehl = nil,
      speed = 30,
      intervals = 20,
      threshold = 3,
      disable_float_win = true,
      disabled_filetypes = { "alpha", "neo-tree", "TelescopePrompt" },
    },
  },
}
