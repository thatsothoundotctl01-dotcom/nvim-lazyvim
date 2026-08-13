return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle explorer" },
      { "<leader>o", "<cmd>Neotree focus<CR>", desc = "Focus explorer" },
    },
    opts = {
      close_if_last_window = true, -- don't leave neo-tree open alone
      popup_border_style = "rounded",
      enable_git_status = true,

      default_component_configs = {
        indent = {
          with_expanders = true, -- simple arrows for open/closed folders
          expander_collapsed = "",
          expander_expanded = "",
        },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
          default = "", -- generic file icon fallback
        },
      },

      window = {
        width = 30,
        mappings = {
          ["<space>"] = "none", -- free up space bar for your leader key
          ["<cr>"] = "open", -- Enter opens file/folder
          ["o"] = "open",
          ["a"] = "add", -- add new file/folder
          ["d"] = "delete",
          ["r"] = "rename",
          ["y"] = "copy_to_clipboard",
          ["x"] = "cut_to_clipboard",
          ["p"] = "paste_from_clipboard",
          ["R"] = "refresh",
        },
      },

      filesystem = {
        follow_current_file = { enabled = true }, -- auto-highlights the file you're editing
        use_libuv_file_watcher = true, -- auto-refreshes on external changes
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
  },
}
