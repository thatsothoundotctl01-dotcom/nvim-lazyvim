return {
  "karb94/neoscroll.nvim",
  event = "VeryLazy",
  opts = {
    -- Keymaps to enable for smooth scrolling
    mappings = {
      "<C-u>",
      "<C-d>",
      "<C-b>",
      "<C-f>",
      "<C-y>",
      "<C-e>",
      "zt",
      "zz",
      "zb",
    },
    hide_cursor = true, -- Hide cursor while scrolling for a smoother look
    stop_eof = true, -- Stop at EOF when scrolling downwards
    respect_scrolloff = false, -- Stop scrolling when reaching scrolloff margin
    cursor_scrolls_alone = true, -- Cursor continues scrolling if window can't scroll further
    duration_multiplier = 1.0, -- Adjust global animation duration
    easing = "quadratic", -- Easing function: "linear", "quadratic", "cubic", "quartic", "sine", "circular"
  },
}
