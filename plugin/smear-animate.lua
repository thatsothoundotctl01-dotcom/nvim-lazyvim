return {
  "sphamba/smear-cursor.nvim",
  opts = {
    -- Speed & Stiffness (Higher = Faster/Snappier)
    stiffness = 0.9, -- Fast head response (default is ~0.6)
    trailing_stiffness = 0.7, -- Tail catches up quickly instead of dragging behind
    stiffness_insert_mode = 0.9, -- Keeps typing speed snappy in insert mode
    trailing_stiffness_insert_mode = 0.7,

    -- Damping (Higher = Snaps directly into place without bouncy inertia)
    damping = 0.95,
    damping_insert_mode = 0.95,

    -- Distance thresholds (Stops drawing early so you don't wait on subtle trail rendering)
    distance_stop_animating = 0.5,
    distance_stop_animating_vertical_bar = 0.5,

    -- Maximum length (Keeps trail short so it doesn't span across the screen)
    max_length = 10,

    -- High-Speed Particle Tweaks
    particles_enabled = true,
    particles_per_second = 100, -- High density...
    particle_max_lifetime = 100, -- ...but fades almost instantly (100ms) for a quick spark effect
    particle_max_initial_velocity = 20,

    -- Appearance
    cursor_color = "#d38aea",
  },
}
