return {
  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",

    opts = {
      -- Cursor appearance
      cursor_color = "none",
      hide_target_hack = true,

      -- Smooth movement (minimal trail)
      stiffness = 0.5,
      trailing_stiffness = 0.5,

      -- Smooth physics
      damping = 0.85,
      trailing_exponent = 1,

      -- Insert mode
      stiffness_insert_mode = 0.5,
      trailing_stiffness_insert_mode = 0.5,
      damping_insert_mode = 0.9,

      -- Animation quality
      time_interval = 10,

      -- Keep animation smooth
      distance_stop_animating = 0.1,

      -- Movement behavior
      smear_between_buffers = true,
      smear_between_neighbor_lines = true,
      scroll_buffer_space = true,

      -- No particles
      particles_enabled = false,

      -- Prevent extremely long trails
      max_length = 15,
    },

    specs = {
      {
        "nvim-mini/mini.animate",
        optional = true,
        opts = {
          cursor = { enable = false },
        },
      },
    },
  },
}

#animation v2
#new animate
