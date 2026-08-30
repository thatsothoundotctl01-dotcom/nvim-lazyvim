return {
  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",

    opts = {
      -- Cursor color
      cursor_color = "none",

      -- Animation FPS
      time_interval = 7,

      -- Movement physics
      stiffness = 0.8,
      trailing_stiffness = 0.6,

      -- Insert mode
      stiffness_insert_mode = 0.7,
      trailing_stiffness_insert_mode = 0.7,

      -- Smoothness / bounce
      damping = 0.95,
      damping_insert_mode = 0.95,

      -- Stop animation distance
      distance_stop_animating = 0.5,

      -- Enable smear effects
      smear_between_buffers = true,
      smear_between_neighbor_lines = true,
      smear_insert_mode = true,

      -- Better scrolling behavior
      scroll_buffer_space = true,

      -- Fix cursor duplication
      hide_target_hack = true,
    },

    specs = {
      -- Disable mini.animate cursor to prevent conflict
      {
        "nvim-mini/mini.animate",
        optional = true,
        opts = {
          cursor = {
            enable = false,
          },
        },
      },
    },
  },
}
#smear animation
