return {
  -- Keep Snacks animations, but make them fast/snappy instead of floaty
  {
    "folke/snacks.nvim",
    opts = {
      animate = {
        enabled = true,
        duration = 8,      -- lower = faster (default is usually 20)
        easing = "linear",  -- linear feels snappier than "outQuad" etc.
      },
      scroll = {
        enabled = true,
        duration = 8,
      },
    },
  },

  {
    "gen740/SmoothCursor.nvim",
    enabled = true,
    opts = {
      type = "default",      -- try "exp" or "railgun" for different trail styles
      fancy = { enable = false }, -- disable extra trail sparkle for snappier feel
      speed = 40,             -- higher = faster cursor catch-up (default ~10)
      intervals = 20,         -- lower = more frequent redraws = smoother + faster
      autostart = true,
    },
  },

  {
    "sphamba/smear-cursor.nvim",
    enabled = false, -- flip to true if you'd rather use this instead of SmoothCursor
    opts = {
      stiffness = 0.8,       -- higher = snappier catch-up (0-1 range)
      trailing_stiffness = 0.5,
      distance_stop_animating = 0.5,
      hide_target_hack = false,
    },
  },

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

# disable 
